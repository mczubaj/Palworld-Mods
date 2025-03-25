local helpers = require("helpers")
local config = require "config"

local hotkeyEnabled = false

---@type UPalMapObjectConcreteModelBase
local onTriggerInteractContext
---@type APlayerController
local onTriggerInteractPlayer
---@type UPalUtility
local palUtility

-- Returns items from player's inventory and opened storage container
local function GetItems()
  local context = onTriggerInteractContext
  local player = onTriggerInteractPlayer

  local containerItems = context:GetItemContainerModule():GetContainer().ItemSlotArray
  local inventoryData = palUtility:GetPlayerState(player):GetInventoryData()
  -- magic numbers from EPalItemTypeA enum, importing the actual enum is not possible AFAIK
  local itemTypes = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 }
  ---@type TArray<FPalItemAndNum>
  local inventoryItemInfos = {}
  -- //TODO: replace with UPalItemContainerMultiHelper.Containers[index].ItemSlotArray ?
  inventoryData:GetItemInfoByItemTypeA(itemTypes, inventoryItemInfos)

  return containerItems, inventoryItemInfos
end

-- Returns items that are both in player's inventory and opened storage container
local function GetMatches()
  local containerItems, inventoryItemInfos = GetItems()

  local lookup = {}
  for index = 1, #containerItems do
    local staticId = containerItems[index]:GetItemId().StaticId:ToString()
    lookup[staticId] = true
  end

  ---@type TArray<FPalItemAndNum>
  local matched = {}
  for _, item in ipairs(inventoryItemInfos) do
    local retrievedItem = item:get()
    local staticId = retrievedItem.ItemId.StaticId:ToString()

    if lookup[staticId] then
      table.insert(matched, item)
    end
  end

  return matched
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", function()
  ---@diagnostic disable-next-line: cast-local-type
  palUtility = StaticFindObject("/Script/Pal.Default__PalUtility")

  RegisterHook("/Script/Pal.PalMapObjectConcreteModelBase:OnTriggerInteract", function(Context, Player, InteractionType)
    hotkeyEnabled = true

    onTriggerInteractContext = Context:get()
    onTriggerInteractPlayer = Player:get()
  end)

  -- modify using widget:
  RegisterHook(
    "/Game/Pal/Blueprint/UI/Inventory/WBP_PalPlayerInventoryScrollList.WBP_PalPlayerInventoryScrollList_C:Construct",
    function(WidgetContext)
      print("Widget construct triggered")
      ---@type UPalCommonScrollListBase
      local widget = WidgetContext:get()
      -- WBP_PalItemScrollList_C /Engine/Transient.PalGameEngine_2147482595:BP_PalGameInstance_C_2147482520.WBP_PalOverallUILayout_C_2147482201.WidgetTree_2147482200.WBP_ItemChest_C_2147010652.WidgetTree_2147010651.WBP_IngameMenu_Chest.WidgetTree_2147010650.WBP_PalItemScrollList
      -- "/Game/Pal/Blueprint/UI/CommonWidget/CommonScrollList/WBP_PalCommonScrollList.WBP_PalCommonScrollList_C:Construct"

      RegisterKeyBind(config.WIDGET_MOVE_HOTKEY, function()
        if widget == nil then
          print("Widget is nil")
          return
        end

        local player = onTriggerInteractPlayer
        local storageContainerId = onTriggerInteractContext:GetItemContainerModule():GetContainerId()
        local matchedItems = GetMatches()

        local lookup = {}
        for index = 1, #matchedItems do
          local staticId = matchedItems[index]:get().ItemId.StaticId:ToString()
          lookup[staticId] = true
        end

        ---@type TArray<UPalItemContainer>
        local playerInvContainers = palUtility:GetPlayerState(player):GetInventoryData().InventoryMultiHelper.Containers
        -- //TODO: magic number
        -- maybe solve with UPalItemContainerMultiHelper:FindByStaticItemIds - use current inv contents to find container
        ---@type UPalItemContainer
        local playerInvContainer = playerInvContainers[1]

        for index = 1, #playerInvContainer.ItemSlotArray do
          local slot = playerInvContainer.ItemSlotArray[index]
          local staticId = slot.ItemId.StaticId:ToString()

          if lookup[staticId] then
            widget:MoveItem(1, slot, storageContainerId)
          end
        end
      end)
    end)

  RegisterKeyBind(config.DROPOFF_HOTKEY, function()
    if not hotkeyEnabled then
      print("Hotkey disabled")
      return
    end

    print('Hotkey triggered')

    local matchedItems = GetMatches()
    for _, item in ipairs(matchedItems) do
      local retrievedItem = item:get()

      print("Matched Static ID:", retrievedItem.ItemId.StaticId:ToString(), "; Count:", retrievedItem.Num)
    end

    -- direct modify:
    -- UPalItemContainerMultiHelper.Containers[index].ItemSlotArray
    -- GetContainer().ItemSlotArray
  end)
end
)
