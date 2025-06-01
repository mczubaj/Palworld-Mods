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

local function HandleModLogic(PlayerController)
  if isHooked then return end
  isHooked = true

  ---@type APlayerController
  player = PlayerController:get().Pawn
  ---@type UPalUtility
  ---@diagnostic disable-next-line: assign-type-mismatch
  palUtility = StaticFindObject("/Script/Pal.Default__PalUtility")

  RegisterHook("/Script/Pal.PalMapObjectConcreteModelBase:OnTriggerInteract",
    function(TargetStorageContainer)
      ---@diagnostic disable-next-line: undefined-field
      targetStorageContainerModule = TargetStorageContainer:get().GetItemContainerModule()

      ---@type UPalMasterDataTablesUtility
      ---@diagnostic disable-next-line: assign-type-mismatch
      local palDataTablesUtility = StaticFindObject("/Script/Pal.Default__PalMasterDataTablesUtility")

      -- index is a magic number from EPalPlayerInventoryType - at the time of writing, the type we want is "Common"
      local playerInventorySlots = palUtility:GetPlayerState(player):GetInventoryData().InventoryMultiHelper
          .Containers[1].ItemSlotArray

      local recipeTableAccess = palDataTablesUtility:GetItemRecipeDataTableAccess(player)

      -- Loop through inventory and lookup recipe for each item
      for index = 1, #playerInventorySlots do
        local slot = playerInventorySlots[index]

        if slot:IsEmpty() then return end

        local itemName = slot.ItemId.StaticId:ToString()
        local isRecipeFound = {}
        ---@diagnostic disable-next-line: param-type-mismatch
        local recipe = recipeTableAccess:BP_FindRow(FName(itemName), isRecipeFound)

        if isRecipeFound.bResult then
          print("Recipe found for item:", itemName)

          print(recipe.Material1_Id:ToString(), "x", recipe.Material1_Count)
          print(recipe.Material2_Id:ToString(), "x", recipe.Material2_Count)
          print(recipe.Material3_Id:ToString(), "x", recipe.Material3_Count)
          print(recipe.Material4_Id:ToString(), "x", recipe.Material4_Count)
          print(recipe.Material5_Id:ToString(), "x", recipe.Material5_Count)
        end
      end

      RegisterHook(
        "/Game/Pal/Blueprint/UI/Inventory/WBP_PalPlayerInventoryScrollList.WBP_PalPlayerInventoryScrollList_C:Construct",
        function(PlayerInventoryWidget)
          ---@diagnostic disable-next-line: undefined-field
          playerInventoryWidget = PlayerInventoryWidget:get()

          if targetStorageContainerModule:IsValid() and playerInventoryWidget:IsValid() then
            isHotkeysEnabled = true
          end
        end)

      RegisterHook(
        "/Game/Pal/Blueprint/UI/MapObject/ItemChest/WBP_ItemChest.WBP_ItemChest_C:Destruct",
        function()
        end)
    end)

  RegisterKeyBind(Key.N, function()
  end)
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", HandleModLogic)

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", HandleModLogic)
