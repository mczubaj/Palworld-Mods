---@meta

---@class UBP_ActionCooking_C : UBP_ActionInteractBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_ActionCooking_C = {}

function UBP_ActionCooking_C:OnBeginAction() end
function UBP_ActionCooking_C:OnEndAction() end
---@param EntryPoint int32
function UBP_ActionCooking_C:ExecuteUbergraph_BP_ActionCooking(EntryPoint) end


