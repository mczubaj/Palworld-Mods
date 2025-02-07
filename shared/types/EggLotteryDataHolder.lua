---@meta

---@class UEggLotteryDataHolder_C : UObject
---@field CharacterIds TArray<FName>
UEggLotteryDataHolder_C = {}

---@return boolean
function UEggLotteryDataHolder_C:IsEmpty() end
---@return FName
function UEggLotteryDataHolder_C:GetRandom() end
---@param CharacterID FName
function UEggLotteryDataHolder_C:Add(CharacterID) end


