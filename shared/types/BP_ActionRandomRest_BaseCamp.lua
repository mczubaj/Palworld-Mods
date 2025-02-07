---@meta

---@class UBP_ActionRandomRest_BaseCamp_C : UBP_ActionRandomRest_C
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_ActionRandomRest_BaseCamp_C = {}

---@return FPalRandomRestInfo
function UBP_ActionRandomRest_BaseCamp_C:GetRandomRestInfo() end
---@param DeltaTime float
function UBP_ActionRandomRest_BaseCamp_C:TickAction(DeltaTime) end
---@param EntryPoint int32
function UBP_ActionRandomRest_BaseCamp_C:ExecuteUbergraph_BP_ActionRandomRest_BaseCamp(EntryPoint) end


