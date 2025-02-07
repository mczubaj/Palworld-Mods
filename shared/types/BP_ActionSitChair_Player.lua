---@meta

---@class UBP_ActionSitChair_Player_C : UBP_ActionInteractBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Flag Name'] FName
UBP_ActionSitChair_Player_C = {}

---@param Disable boolean
function UBP_ActionSitChair_Player_C:DisableInteract(Disable) end
function UBP_ActionSitChair_Player_C:ReleaseSit() end
function UBP_ActionSitChair_Player_C:MoveCharacterToSit() end
function UBP_ActionSitChair_Player_C:OnBeginAction() end
function UBP_ActionSitChair_Player_C:OnEndAction() end
---@param DeltaTime float
function UBP_ActionSitChair_Player_C:TickAction(DeltaTime) end
---@param EntryPoint int32
function UBP_ActionSitChair_Player_C:ExecuteUbergraph_BP_ActionSitChair_Player(EntryPoint) end


