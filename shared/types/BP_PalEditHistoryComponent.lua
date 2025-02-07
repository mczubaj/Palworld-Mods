---@meta

---@class UBP_PalEditHistoryComponent_C : UActorComponent
---@field History TArray<FPalIndividualCharacterSaveParameter>
UBP_PalEditHistoryComponent_C = {}

---@param Index int32
function UBP_PalEditHistoryComponent_C:RemoveFromHistory(Index) end
---@param Param FPalIndividualCharacterSaveParameter
function UBP_PalEditHistoryComponent_C:AddToHistory(Param) end


