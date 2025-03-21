local config = require "config"

RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(Context)
  RegisterKeyBind(config.DROPOFF_HOTKEY, function()
    print('Hotkey pressed')
    local palUtility = StaticFindObject("/Script/Pal.Default__PalUtility")
    -- local player = palUtility:GetPlayerCharacter(Context:get())
    local player = FindFirstOf("PalPlayerCharacter")

    -- Function to get local inventory data
    -- local localInventoryData = PalUtility:GetLocalInventoryData(Context:get())
    -- print("localInventoryData")
    -- print(localInventoryData)
    print("player")
    print(player)
    print(player:isValid())
    print("player.PlayerState")
    print(player.PlayerState)
    print(player.PlayerState:isValid())
    print("palUtility:GetPlayerStateByPlayer")
    print(palUtility:GetPlayerStateByPlayer(player))
    print(palUtility:GetPlayerStateByPlayer(player):isValid())
    -- print(palUtility:GetPlayerStateByPlayer(player) == null)
    local inventoryData = player.PlayerState:GetInventoryData()
    -- local inventoryData = palUtility:GetPlayerStateByPlayer(player).GetInventoryData()

    print("inventoryData")
    print(inventoryData)
    print(inventoryData:isValid())

    -- Define the array with item type filter (Material in this case)
    local itemTypes = { "Material" }

    -- Get item info by item type
    local itemInfos = inventoryData:GetItemInfoByItemType(itemTypes[1])

    -- Iterate through itemInfos array
    for index, item in ipairs(itemInfos) do
      -- Extract item ID and count
      local itemId = item.ItemId
      local num = item.Num

      -- Extract static and dynamic IDs from the item
      local staticId = item.PalItemId.StaticId
      local dynamicId = item.PalItemId.DynamicId

      -- Print debug information (Development only)
      print("Item ID: " .. tostring(itemId) .. ", Count: " .. tostring(num) ..
        ", Static ID: " .. tostring(staticId) .. ", Dynamic ID: " .. tostring(dynamicId))
    end
  end)
end
)
