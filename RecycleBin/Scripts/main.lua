local isHooked = false
local isWidgetsHooked = false

local function HandleModLogic()
  if isHooked then return end
  isHooked = true

  local barrelSlots = nil

  local function clearBarrelSlots()
    if barrelSlots == nil or not barrelSlots:IsValid() then return end

    print("Clearing barrelSlots")
    barrelSlots:ForEach(function(_, slot)
      slot:get().StackCount = 0
    end)
  end

  RegisterHook("/Script/Pal.PalMapObjectConcreteModelBase:OnTriggerInteract",
    function(TargetObject)
      ---@type UPalMapObjectConcreteModelBase
      local targetObject = TargetObject:get()
      local targetObjectName = targetObject:TryGetMapObjectId():ToString()

      if targetObjectName == "Barrel_Wood" then
        print("Barrel_Wood interacted, setting barrelSlots")
        barrelSlots = targetObject:GetItemContainerModule():GetContainer().ItemSlotArray
      else
        print("Barrel_Wood not interacted, clearing barrelSlots")
        barrelSlots = nil
      end

      if isWidgetsHooked then return end
      isWidgetsHooked = true

      RegisterHook(
        "/Game/Pal/Blueprint/UI/MapObject/ItemChest/WBP_ItemChest.WBP_ItemChest_C:Destruct",
        function()
          print("Clearing barrelSlots on destruct")

          barrelSlots = nil
        end)
    end)

  RegisterHook("/Script/Pal.PalCommonScrollListBase:MoveItem",
    function()
      print("PalCommonScrollListBase MoveItem")

      ExecuteWithDelay(100, function()
        clearBarrelSlots()
      end)
    end)
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", HandleModLogic)

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", HandleModLogic)
