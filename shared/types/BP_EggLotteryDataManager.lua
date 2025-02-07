---@meta

---@class ABP_EggLotteryDataManager_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field PalEggLotteryMap TMap<FName, UEggLotteryDataHolder_C>
---@field EggElementMap TMap<EPalElementType, FName>
ABP_EggLotteryDataManager_C = {}

---@param EggId FName
---@return boolean
function ABP_EggLotteryDataManager_C:IsEggEmpty(EggId) end
---@param ElementType EPalElementType
---@param Value FName
function ABP_EggLotteryDataManager_C:GetEggFromElement(ElementType, Value) end
---@param EggId FName
---@return FName
function ABP_EggLotteryDataManager_C:GetRandomEggPal(EggId) end
function ABP_EggLotteryDataManager_C:SetupPalEggLotteryData() end
---@param EggId FName
---@param CharacterID FName
function ABP_EggLotteryDataManager_C:AddPalEggLotteryDataEntry(EggId, CharacterID) end
function ABP_EggLotteryDataManager_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_EggLotteryDataManager_C:ExecuteUbergraph_BP_EggLotteryDataManager(EntryPoint) end


