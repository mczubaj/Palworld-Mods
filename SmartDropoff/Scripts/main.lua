local helpers = require("helpers")
local config = require "config"

local hotkeyEnabled = false

-- Returns items from player's inventory and opened storage container
local function GetItems(context, player)
  ---@type TArray<UPalItemSlot>
  local containerItems = context:GetItemContainerModule():GetContainer().ItemSlotArray

  local inventoryData = palUtility:GetPlayerState(player:get()):GetInventoryData()
  -- magic numbers from EPalItemTypeA enum, importing the actual enum is not possible AFAIK
  local itemTypes = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 }
  local itemInfos = {}
  inventoryData:GetItemInfoByItemTypeA(itemTypes, itemInfos)

  return containerItems, itemInfos
end

-- Returns items that are both in player's inventory and opened storage container
local function GetMatches(containerItems, itemInfos)
  local matched = {}

  local lookup = {}
  for index = 1, #containerItems do
    local staticId = containerItems[index]:GetItemId().StaticId:ToString()
    lookup[staticId] = true
  end

  for _, item in ipairs(itemInfos) do
    ---@type FPalItemAndNum
    local retrievedItem = item:get()
    local staticId = retrievedItem.ItemId.StaticId:ToString()

    if lookup[staticId] then
      table.insert(matched, item)
    end
  end

  return matched
end

-- checks if widgets open to disable hotkey
-- local AnyWidgetsOpen = false

-- RegisterHook("/Script/UMG.UserWidget:Construct", function()
--     AnyWidgetsOpen = true
-- end)

-- RegisterHook("/Script/UMG.UserWidget:Destruct", function()
--     AnyWidgetsOpen = false
-- end)

-- RegisterKeyBind(Key.B, function()
--     if AnyWidgetsOpen then return end
--     print("Key 'B' hit, while no widgets are open.\n")
-- end)

RegisterHook("/Script/Engine.PlayerController:ClientRestart", function()
  ---@class UPalUtility
  palUtility = StaticFindObject("/Script/Pal.Default__PalUtility")

  RegisterHook("/Script/Pal.PalMapObjectConcreteModelBase:OnTriggerInteract", function(Context, Player, InteractionType)
    -- check if MapObject is a storage
    -- maybe use a different context? (chest something, look in live view/watches) and test with all chest types

    -- check InteractionType:get()? "Open" seems to be the only one suitable for storages

    hotkeyEnabled = true

    local matchedItems = GetMatches(GetItems(Context:get(), Player))

    -- Print matched items
    print("Matches length: " .. #matchedItems)
    for _, item in ipairs(matchedItems) do
      local retrievedItem = item:get()

      print("Matched Static ID:", retrievedItem.ItemId.StaticId:ToString(), "; Count:", retrievedItem.Num)
    end
  end)

  RegisterKeyBind(config.DROPOFF_HOTKEY, function()
    if not hotkeyEnabled then
      print("Hotkey disabled")
      return
    end

    print('Hotkey triggered')

    -- recalculate matchedItems
    -- could be achieved by making related vars global? make sure they're refs and don't get stale
    -- store items
    -- cleanup related vars
  end)
end
)
