---@meta

---@class UBP_OtomoPalHolderComponentForNPC_C : UBP_OtomoPalHolderComponent_C
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_OtomoPalHolderComponentForNPC_C = {}

---@param Class TSubclassOf<AAIController>
function UBP_OtomoPalHolderComponentForNPC_C:GetAIClass(Class) end
function UBP_OtomoPalHolderComponentForNPC_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function UBP_OtomoPalHolderComponentForNPC_C:ExecuteUbergraph_BP_OtomoPalHolderComponentForNPC(EntryPoint) end


