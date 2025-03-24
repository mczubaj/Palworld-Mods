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
  -- replace with UPalItemContainerMultiHelper.Containers[index].ItemSlotArray ?
  inventoryData:GetItemInfoByItemTypeA(itemTypes, inventoryItemInfos)

  return containerItems, inventoryItemInfos
end

-- Returns items that are both in player's inventory and opened storage container
local function GetMatches()
  local containerItems, inventoryItemInfos = GetItems()

  local matched = {}

  local lookup = {}
  for index = 1, #containerItems do
    local staticId = containerItems[index]:GetItemId().StaticId:ToString()
    lookup[staticId] = true
  end

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

    print("Stored globals: ", "OnTriggerInteractContext: ", onTriggerInteractContext, ", OnTriggerInteractPlayer: ",
      onTriggerInteractPlayer)
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






    -- UPalPlayerInventoryData:RequestFillSlotToTargetContainerFromInventory_ToServer

    -- UPalPlayerInventoryData:TryGetContainerFromInventoryType - get container shortcut?
    -- UPalItemContainerMultiHelper:FindByStaticItemIds - use to find container
    -- UPalItemContainerMultiHelper.Containers[index].ItemSlotArray direct modify
    -- GetContainer().ItemSlotArray direct modify




    -- TODO:
    -- cleanup related vars
  end)
end
)
