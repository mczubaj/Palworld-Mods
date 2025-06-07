local isHooked = false
local isWidgetsHooked = false

---@type UPalUtility
local palUtility
---@type APlayerController
local player

---@type FPalItemRecipe
local recipeForRefund

-- TODO: Probably not needed anymore
local function Cleanup()
  ---@diagnostic disable: cast-local-type
  recipeForRefund = nil
  ---@diagnostic enable: cast-local-type
end

local function RecycleItem()
  print("Recycling recipe: ", recipeForRefund)

  if not recipeForRefund then
    print("No recipe for refund found")
    return
  end

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
      print("Refunding", material.id:ToString(), "x", material.count)
      palUtility:GetPlayerState(player):GetInventoryData():AddItem_ServerInternal(material.id, material.count, true)
      Cleanup()
    end
  end
end

local function HandleModLogic(PlayerController)
  if isHooked then return end
  isHooked = true

  ---@type APlayerController
  player = PlayerController:get().Pawn
  ---@type UPalUtility
  ---@diagnostic disable-next-line: assign-type-mismatch
  palUtility = StaticFindObject("/Script/Pal.Default__PalUtility")
  ---@type UPalMasterDataTablesUtility
  ---@diagnostic disable-next-line: assign-type-mismatch
  local palDataTablesUtility = StaticFindObject("/Script/Pal.Default__PalMasterDataTablesUtility")

  RegisterHook("/Script/Pal.PalMapObjectConcreteModelBase:OnTriggerInteract",
    function(TargetObject)
      ---@type UPalMapObjectConcreteModelBase
      ---@diagnostic disable-next-line: undefined-field
      local targetObject = TargetObject:get()
      local targetObjectName = targetObject:TryGetMapObjectId():ToString()

      if targetObjectName ~= "Shelf02_Iron" then
        print("Target object is not Long Iron Shelf, cleaning up...")
        Cleanup()
        return
      end

      local shelfSlots = targetObject:GetItemContainerModule():GetContainer().ItemSlotArray
      local recipeTableAccess = palDataTablesUtility:GetItemRecipeDataTableAccess(player)

      -- TODO: Switch to just checking first slot
      print("Looking for recipes in container...")
      for index = 1, #shelfSlots do
        if recipeForRefund then break end
        print("No recipe set, checking slot ", index)

        local slot = shelfSlots[index]

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

      -- TODO: Move this hook outside of OnTriggerInteract?
      RegisterHook(
        "/Game/Pal/Blueprint/UI/MapObject/ItemChest/WBP_ItemChest.WBP_ItemChest_C:Destruct",
        function()
          print("[ItemRecycler] ItemChest widget destructed, cleaning up...")
          Cleanup()
        end)
    end)

  -- TODO: check if this is needed or WBP_ItemChest_C:Destruct is enough
  -- RegisterHook("/Script/Pal.PalMapObject:OnCloseParameter",
  --   function()
  --     print("[ItemRecycler] OnCloseParameter called, cleaning up...")
  --     Cleanup()
  --   end)

  RegisterKeyBind(Key.N, function()
    print("N key pressed")
    RecycleItem()
  end)
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", HandleModLogic)

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", HandleModLogic)
