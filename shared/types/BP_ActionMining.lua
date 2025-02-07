---@meta

---@class UBP_ActionMining_C : UBP_ActionInteractBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ToolActor AActor
---@field flagName FName
UBP_ActionMining_C = {}

---@param isHidden boolean
function UBP_ActionMining_C:SetHiddenAttachWeapon(isHidden) end
---@param Montage UAnimMontage
---@param SectionName FName
function UBP_ActionMining_C:TriggerWorkActionAttackIfNeed(Montage, SectionName) end
function UBP_ActionMining_C:RequestDamageTargetObject() end
---@param Array TArray<FName>
function UBP_ActionMining_C:GetDetectableNotifyNames(Array) end
function UBP_ActionMining_C:OnEndAction() end
function UBP_ActionMining_C:OnBeginAction() end
---@param Montage UAnimMontage
---@param NotifyName FName
function UBP_ActionMining_C:OnBeginAnimNotify(Montage, NotifyName) end
---@param EntryPoint int32
function UBP_ActionMining_C:ExecuteUbergraph_BP_ActionMining(EntryPoint) end


