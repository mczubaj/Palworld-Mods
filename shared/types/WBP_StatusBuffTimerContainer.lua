---@meta

---@class UWBP_StatusBuffTimerContainer_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HorizontalBox UHorizontalBox
---@field Effects TMap<EPalFoodStatusEffectType, int32>
UWBP_StatusBuffTimerContainer_C = {}

---@param individualParam UPalIndividualCharacterParameter
function UWBP_StatusBuffTimerContainer_C:UpdateCharacterBuff(individualParam) end
---@param EntryPoint int32
function UWBP_StatusBuffTimerContainer_C:ExecuteUbergraph_WBP_StatusBuffTimerContainer(EntryPoint) end


