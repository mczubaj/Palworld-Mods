---@meta

---@class UBP_ActionCooking_Player_C : UBP_ActionInteractBase_Player_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CookingToolActor_L ABP_CookingFryingPan_C
---@field CheckEndCancelTimer_0 FTimerHandle
---@field CookingToolActor_R ABP_CookingSpatula_C
UBP_ActionCooking_Player_C = {}

function UBP_ActionCooking_Player_C:OnMontageEnd() end
function UBP_ActionCooking_Player_C:SyncAnim() end
---@param NotifyName FName
function UBP_ActionCooking_Player_C:OnNotifyBegin(NotifyName) end
---@param EntryPoint int32
function UBP_ActionCooking_Player_C:ExecuteUbergraph_BP_ActionCooking_Player(EntryPoint) end


