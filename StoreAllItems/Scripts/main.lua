local config = require "config"

local isHooked = false
local isWidgetsHooked = false
local isHotkeysEnabled = false

---@type UPalUtility
local palUtility
---@type APlayerController
local player

---@type UPalMapObjectItemContainerModule
local targetStorageContainerModule
---@type UPalCommonScrollListBase
local playerInventoryWidget

local function GetContainerParams()
  local targetStorageContainerId = targetStorageContainerModule:GetContainerId()
  local targetStorageContainerSlots = targetStorageContainerModule:GetContainer().ItemSlotArray
  -- index is a magic number from EPalPlayerInventoryType - at the time of writing, the type we want is "Common"
  local playerInventorySlots = palUtility:GetPlayerState(player):GetInventoryData().InventoryMultiHelper.Containers[1]
      .ItemSlotArray

  return playerInventorySlots, targetStorageContainerId, targetStorageContainerSlots
end

-- local function StoreSmart()
--   local playerInventorySlots, targetStorageContainerId, targetStorageContainerSlots = GetContainerParams()

--   local targetStorageLookup = {}
--   for index = 1, #targetStorageContainerSlots do
--     local staticId = targetStorageContainerSlots[index]:GetItemId().StaticId:ToString()
--     targetStorageLookup[staticId] = true
--   end

--   for index = 1, #playerInventorySlots do
--     local slot = playerInventorySlots[index]
--     local staticId = slot.ItemId.StaticId:ToString()

--     if targetStorageLookup[staticId] then
--       playerInventoryWidget:MoveItem(1, slot, targetStorageContainerId)
--     end
--   end
-- end

local function StoreAll()
  local playerInventorySlots, targetStorageContainerId = GetContainerParams()

  for index = 1, #playerInventorySlots do
    playerInventoryWidget:MoveItem(1, playerInventorySlots[index], targetStorageContainerId)
  end
end

local function CheckIsHotkeysEnabled(hotkeyType)
  if not isHotkeysEnabled then
    palUtility:SendSystemAnnounce(player, hotkeyType .. " hotkey is disabled!")
    print(hotkeyType .. " hotkey is disabled!")
    return false
  end

  palUtility:SendSystemAnnounce(player, hotkeyType .. " pressed!")
  print(hotkeyType .. " pressed!")
  return true
end

local function Cleanup()
  ---@diagnostic disable: cast-local-type
  targetStorageContainerModule = nil
  playerInventoryWidget = nil
  ---@diagnostic enable: cast-local-type

  isHotkeysEnabled = false
end

local function HandleModLogic(PlayerController)
  if isHooked then return end
  isHooked = true

  ---@type APlayerController
  player = PlayerController:get().Pawn
  ---@type UPalUtility
  palUtility = StaticFindObject("/Script/Pal.Default__PalUtility")

  RegisterHook("/Script/Pal.PalMapObjectConcreteModelBase:OnTriggerInteract",
    function(TargetStorageContainer)
      print("Container interact triggered")

      targetStorageContainerModule = TargetStorageContainer:get().GetItemContainerModule()

      if isWidgetsHooked then return end
      isWidgetsHooked = true

      RegisterHook(
        "/Game/Pal/Blueprint/UI/Inventory/WBP_PalPlayerInventoryScrollList.WBP_PalPlayerInventoryScrollList_C:Construct",
        function(PlayerInventoryWidget)
          print("Widget construct triggered")

          playerInventoryWidget = PlayerInventoryWidget:get()

          if targetStorageContainerModule:IsValid() and playerInventoryWidget:IsValid() then
            isHotkeysEnabled = true
          end
        end)

      RegisterHook(
        "/Game/Pal/Blueprint/UI/MapObject/ItemChest/WBP_ItemChest.WBP_ItemChest_C:Destruct",
        function()
          print("Widget destruct triggered")

          Cleanup()
        end)
    end)

  -- RegisterKeyBind(config.SMART_DROPOFF_HOTKEY, function()
  --   if not CheckIsHotkeysEnabled("Smart dropoff") then return end

  --   StoreSmart()
  -- end)

  RegisterKeyBind(config.ALL_DROPOFF_HOTKEY, function()
    if not CheckIsHotkeysEnabled("Store all") then return end

    StoreAll()
  end)
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", HandleModLogic)

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", HandleModLogic)
