local helpers = require("helpers")
local config = require "config"

local isHooked = false
local isWidgetsHooked = false
local isHotkeysEnabled = false

---@type UPalUtility
local palUtility

---@type UPalMapObjectConcreteModelBase
local targetStorageContainer
---@type APlayerController
local player
---@type UPalCommonScrollListBase
local playerInventoryWidget

-- Returns items that exist both in player's inventory and the target storage container
local function GetMatches()
  local containerItems = targetStorageContainer:GetItemContainerModule():GetContainer().ItemSlotArray

  local containerMatchLookup = {}
  for index = 1, #containerItems do
    local staticId = containerItems[index]:GetItemId().StaticId:ToString()
    containerMatchLookup[staticId] = true
  end

  local inventoryData = palUtility:GetPlayerState(player):GetInventoryData()
  ---@type TArray<EPalItemTypeA>
  local itemTypes = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 }
  ---@type TArray<FPalItemAndNum>
  local inventoryItemInfos = {}
  -- //TODO: replace with UPalItemContainerMultiHelper.Containers[index].ItemSlotArray ?
  inventoryData:GetItemInfoByItemTypeA(itemTypes, inventoryItemInfos)

  ---@type TArray<FPalItemAndNum>
  local matched = {}
  for _, item in ipairs(inventoryItemInfos) do
    ---@type FPalItemAndNum
    local retrievedItem = item:get()
    local staticId = retrievedItem.ItemId.StaticId:ToString()

    if containerMatchLookup[staticId] then
      table.insert(matched, item)
    end
  end

  return matched
end

local function GetContainerParams()
  local storageContainerId = targetStorageContainer:GetItemContainerModule():GetContainerId()

  local playerInventoryContainers = palUtility:GetPlayerState(player):GetInventoryData().InventoryMultiHelper.Containers
  -- //TODO: magic number
  -- maybe solve with UPalItemContainerMultiHelper:FindByStaticItemIds - use current inv contents to find container
  local playerInventorySlots = playerInventoryContainers[1].ItemSlotArray

  return storageContainerId, playerInventorySlots
end

local function StoreSmart()
  local matchedItems = GetMatches()

  local lookup = {}
  for index = 1, #matchedItems do
    local staticId = matchedItems[index]:get().ItemId.StaticId:ToString()
    lookup[staticId] = true
  end

  local storageContainerId, playerInventorySlots = GetContainerParams()

  for index = 1, #playerInventorySlots do
    local slot = playerInventorySlots[index]
    local staticId = slot.ItemId.StaticId:ToString()

    if lookup[staticId] then
      playerInventoryWidget:MoveItem(1, slot, storageContainerId)
    end
  end
end

local function StoreAll()
  local storageContainerId, playerInventorySlots = GetContainerParams()

  for index = 1, #playerInventorySlots do
    playerInventoryWidget:MoveItem(1, playerInventorySlots[index], storageContainerId)
  end
end

local function Cleanup()
  ---@diagnostic disable: cast-local-type
  targetStorageContainer = nil
  playerInventoryWidget = nil
  ---@diagnostic enable: cast-local-type

  isHotkeysEnabled = false
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(PlayerController)
  if isHooked then return end
  isHooked = true

  ---@type APlayerController
  player = PlayerController:get().Pawn
  ---@type UPalUtility
  ---@diagnostic disable-next-line: assign-type-mismatch
  palUtility = StaticFindObject("/Script/Pal.Default__PalUtility")

  RegisterHook("/Script/Pal.PalMapObjectConcreteModelBase:OnTriggerInteract",
    function(TargetStorageContainer, _, InteractionType)
      print("Container interact triggered")

      targetStorageContainer = TargetStorageContainer:get()

      if isWidgetsHooked then return end
      isWidgetsHooked = true

      RegisterHook(
        "/Game/Pal/Blueprint/UI/Inventory/WBP_PalPlayerInventoryScrollList.WBP_PalPlayerInventoryScrollList_C:Construct",
        function(PlayerInventoryWidget)
          print("Widget construct triggered")

          playerInventoryWidget = PlayerInventoryWidget:get()
          isHotkeysEnabled = true
        end)

      RegisterHook(
        "/Game/Pal/Blueprint/UI/MapObject/ItemChest/WBP_ItemChest.WBP_ItemChest_C:Destruct",
        function()
          print("Widget destruct triggered")

          Cleanup()
        end)
    end)

  RegisterKeyBind(config.SMART_DROPOFF_HOTKEY, function()
    if not isHotkeysEnabled then
      palUtility:SendSystemAnnounce(player, "Smart dropoff hotkey disabled!")
      print("Smart dropoff hotkey disabled")
      return
    end

    print("Smart dropoff hotkey pressed")
    palUtility:SendSystemAnnounce(player, "Smart dropoff hotkey pressed!")

    StoreSmart()
  end)

  RegisterKeyBind(config.ALL_DROPOFF_HOTKEY, function()
    if not isHotkeysEnabled then
      palUtility:SendSystemAnnounce(player, "Store all hotkey disabled!")
      print("Store all hotkey disabled")
      return
    end

    print("Store all hotkey pressed")
    palUtility:SendSystemAnnounce(player, "Store all hotkey pressed!")

    StoreAll()
  end)
end)
