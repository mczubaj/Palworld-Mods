local isHooked = false

---@type UPalUtility
local palUtility
---@type UPalMasterDataTablesUtility
local palDataTablesUtility
---@type APlayerController
local player

---@type UPalMapObjectItemContainerModule | nil
local containerModule
---@type TArray<UPalItemSlot> | nil
local containerSlots

local function Cleanup()
  containerSlots = nil
  containerModule = nil
end

local function RecycleItem()
  if not containerSlots or not containerModule then
    print("No container found, can't recycle item")
    return
  end

  local sourceSlot = containerSlots[1]

  if not sourceSlot or sourceSlot:IsEmpty() then
    print("Container slot is empty, nothing to recycle")
    return
  end

  local itemName = sourceSlot.ItemId.StaticId
  local recipeTableAccess = palDataTablesUtility:GetItemRecipeDataTableAccess(player)
  local isRecipeFound = {}
  ---@diagnostic disable-next-line: param-type-mismatch
  local recipe = recipeTableAccess:BP_FindRow(itemName, isRecipeFound)

  if not isRecipeFound.bResult then
    -- TODO: Inform the player item has no recipe
    print("Recipe not found for item:", itemName:ToString())
    return
  end

  -- TODO: add ratio from config here:
  local refundRatio = (sourceSlot.StackCount / recipe.Product_Count) * 0.9
  local recipeMaterials = {
    { id = recipe.Material1_Id, count = recipe.Material1_Count },
    { id = recipe.Material2_Id, count = recipe.Material2_Count },
    { id = recipe.Material3_Id, count = recipe.Material3_Count },
    { id = recipe.Material4_Id, count = recipe.Material4_Count },
    { id = recipe.Material5_Id, count = recipe.Material5_Count },
  }

  for _, material in ipairs(recipeMaterials) do
    if (material.id:ToString() ~= 'None' and material.count ~= 0) then
      local actualCount = math.ceil(material.count * refundRatio)
      print("Refunding", material.id:ToString(), "x", actualCount)
      palUtility:GetPlayerState(player):GetInventoryData():AddItem_ServerInternal(material.id, actualCount, true)
    end
  end

  sourceSlot.StackCount = 0
  -- Sorting refreshes the container after modifying StackCount directly
  -- Without this the item still shows in the container until reopen, even though it's not interactable
  containerModule:RequestSortContainer()
end

local function RegisterModHooks(PlayerController)
  if isHooked then return end
  isHooked = true

  ---@type APlayerController
  player = PlayerController:get().Pawn
  ---@type UPalUtility
  ---@diagnostic disable-next-line: assign-type-mismatch
  palUtility = StaticFindObject("/Script/Pal.Default__PalUtility")
  ---@type UPalMasterDataTablesUtility
  ---@diagnostic disable-next-line: assign-type-mismatch
  palDataTablesUtility = StaticFindObject("/Script/Pal.Default__PalMasterDataTablesUtility")

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

      containerModule = targetObject:GetItemContainerModule()
      containerSlots = containerModule:GetContainer().ItemSlotArray

      local firstSlotRef = containerSlots[1]
      if #containerSlots > 1 then
        -- Trim slots to one
        containerSlots:Empty();
        containerSlots[1] = firstSlotRef
      end
    end)

  RegisterHook("/Script/Pal.PalMapObject:OnCloseParameter",
    function()
      print("[ItemRecycler] OnCloseParameter called, cleaning up...")
      Cleanup()
    end)

  RegisterKeyBind(Key.N, function()
    print("N key pressed")
    RecycleItem()
  end)
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", RegisterModHooks)
RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", RegisterModHooks)
