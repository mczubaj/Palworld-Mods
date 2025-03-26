local helpers = require("helpers")
local config = require "config"

local isHooked = false
local hotkeysEnabled = false

---@type UPalUtility
local palUtility

---@type UPalMapObjectConcreteModelBase
local targetStorageContainer
---@type APlayerController
local player
---@type UPalCommonScrollListBase
local playerInventoryWidget

-- Returns items from player's inventory and opened storage container
local function GetItems()
  local containerItems = targetStorageContainer:GetItemContainerModule():GetContainer().ItemSlotArray
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

local function StoreItems(playerInventorySlots, storageContainerId, playerInventoryWidget)
  for index = 1, #playerInventorySlots do
    playerInventoryWidget:MoveItem(1, playerInventorySlots[index], storageContainerId)
  end
end

local function StoreSmart()
  local matchedItems = GetMatches()

  local lookup = {}
  for index = 1, #matchedItems do
    local staticId = matchedItems[index]:get().ItemId.StaticId:ToString()
    lookup[staticId] = true
  end

  local storageContainerId = targetStorageContainer:GetItemContainerModule():GetContainerId()
  ---@type TArray<UPalItemContainer>
  local playerInvContainers = palUtility:GetPlayerState(player):GetInventoryData().InventoryMultiHelper.Containers
  -- //TODO: magic number
  -- maybe solve with UPalItemContainerMultiHelper:FindByStaticItemIds - use current inv contents to find container
  local playerInvContainer = playerInvContainers[1]

  for index = 1, #playerInvContainer.ItemSlotArray do
    local slot = playerInvContainer.ItemSlotArray[index]
    local staticId = slot.ItemId.StaticId:ToString()

    if lookup[staticId] then
      playerInventoryWidget:MoveItem(1, slot, storageContainerId)
    end
  end
end

local function StoreAll()
  local storageContainerId = targetStorageContainer:GetItemContainerModule():GetContainerId()
  local playerInvContainers = palUtility:GetPlayerState(player):GetInventoryData().InventoryMultiHelper.Containers
  -- //TODO: magic number
  -- maybe solve with UPalItemContainerMultiHelper:FindByStaticItemIds - use current inv contents to find container
  local playerInvContainer = playerInvContainers[1]

  StoreItems(playerInvContainer.ItemSlotArray, storageContainerId, playerInventoryWidget)
end

local function Cleanup()
  ---@diagnostic disable: cast-local-type
  targetStorageContainer = nil
  playerInventoryWidget = nil
  ---@diagnostic enable: cast-local-type

  hotkeysEnabled = false
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

      RegisterHook(
        "/Game/Pal/Blueprint/UI/Inventory/WBP_PalPlayerInventoryScrollList.WBP_PalPlayerInventoryScrollList_C:Construct",
        function(PlayerInventoryWidget)
          print("Widget construct triggered")

          playerInventoryWidget = PlayerInventoryWidget:get()
          hotkeysEnabled = true
        end)

      RegisterHook(
        "/Game/Pal/Blueprint/UI/MapObject/ItemChest/WBP_ItemChest.WBP_ItemChest_C:Destruct",
        function()
          print("Widget destruct triggered")

          Cleanup()
        end)
    end)

  RegisterKeyBind(config.SMART_DROPOFF_HOTKEY, function()
    if not hotkeysEnabled then
      palUtility:SendSystemAnnounce(player, "Smart dropoff hotkey disabled!")
      print("Smart dropoff hotkey disabled")
      return
    end

    print("Smart dropoff hotkey pressed")
    palUtility:SendSystemAnnounce(player, "Smart dropoff hotkey pressed!")

    StoreSmart()
  end)

  RegisterKeyBind(config.ALL_DROPOFF_HOTKEY, function()
    if not hotkeysEnabled then
      palUtility:SendSystemAnnounce(player, "Store all hotkey disabled!")
      print("Store all hotkey disabled")
      return
    end

    print("Store all hotkey pressed")
    palUtility:SendSystemAnnounce(player, "Store all hotkey pressed!")

    StoreAll()
  end)
end)
