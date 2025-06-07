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
---@type FPalItemRecipe
local recipeForRefund

local function RefundItems()
  local materials = {
    { id = recipeForRefund.Material1_Id, count = recipeForRefund.Material1_Count },
    { id = recipeForRefund.Material2_Id, count = recipeForRefund.Material2_Count },
    { id = recipeForRefund.Material3_Id, count = recipeForRefund.Material3_Count },
    { id = recipeForRefund.Material4_Id, count = recipeForRefund.Material4_Count },
    { id = recipeForRefund.Material5_Id, count = recipeForRefund.Material5_Count },
  }

  for _, material in ipairs(materials) do
    print("Attempting to refund material:", material.id:ToString(), "x", material.count)
    if (material.id:ToString() ~= 'None' and material.count ~= 0) then
      print("Giving", material.id:ToString(), "x", material.count)
      palUtility:GetPlayerState(player):GetInventoryData():AddItem_ServerInternal(material.id, material.count, true)
    end
  end
end

local function Cleanup()
  ---@diagnostic disable: cast-local-type
  targetStorageContainerModule = nil
  playerInventoryWidget = nil
  recipeForRefund = nil
  ---@diagnostic enable: cast-local-type

  isHotkeysEnabled = false
end

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

      print("Looking for recipes in player inventory...")
      -- Loop through inventory and lookup recipe for each item
      for index = 1, #playerInventorySlots do
        if recipeForRefund then break end
        print("No recipe set, checking slot ", index)

        local slot = playerInventorySlots[index]

        if slot:IsEmpty() then goto continue end

        local itemName = slot.ItemId.StaticId:ToString()
        local isRecipeFound = {}
        ---@diagnostic disable-next-line: param-type-mismatch
        local recipe = recipeTableAccess:BP_FindRow(FName(itemName), isRecipeFound)

        if isRecipeFound.bResult then
          print("Recipe found for item:", itemName)
          recipeForRefund = recipe
        end

        ::continue::
      end

      if isWidgetsHooked then return end
      print("[ItemRecycler] Hooking widgets...")
      isWidgetsHooked = true

      RegisterHook(
        "/Game/Pal/Blueprint/UI/Inventory/WBP_PalPlayerInventoryScrollList.WBP_PalPlayerInventoryScrollList_C:Construct",
        function(PlayerInventoryWidget)
          print("[ItemRecycler] PlayerInventoryWidget constructed")
          ---@diagnostic disable-next-line: undefined-field
          playerInventoryWidget = PlayerInventoryWidget:get()

          if targetStorageContainerModule and targetStorageContainerModule:IsValid() and playerInventoryWidget:IsValid() then
            print("Enabling hotkeys...")
            isHotkeysEnabled = true
          end
        end)

      RegisterHook(
        "/Game/Pal/Blueprint/UI/MapObject/ItemChest/WBP_ItemChest.WBP_ItemChest_C:Destruct",
        function()
          print("[ItemRecycler] ItemChest widget destructed, cleaning up...")
          Cleanup()
        end)
    end)

  RegisterKeyBind(Key.N, function()
    print("N key pressed")
    if isHotkeysEnabled and recipeForRefund then RefundItems() else Cleanup() end;
  end)
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", HandleModLogic)

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", HandleModLogic)
