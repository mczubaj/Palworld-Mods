---@meta

---@class UBPL_CreativeMenu_C : UBlueprintFunctionLibrary
UBPL_CreativeMenu_C = {}

---@param Message FString
---@param LogLevel ELoggingLevel::Type
---@param __WorldContext UObject
function UBPL_CreativeMenu_C:CM_LogToFile(Message, LogLevel, __WorldContext) end
---@param WorldContextObject UObject
---@param StaticItemId FName
---@param __WorldContext UObject
---@param Type_B EPalItemTypeB
function UBPL_CreativeMenu_C:GetItemTypeB(WorldContextObject, StaticItemId, __WorldContext, Type_B) end
---@param WorldContextObject UObject
---@param __WorldContext UObject
---@return ABP_EggLotteryDataManager_C
function UBPL_CreativeMenu_C:GetEggLotteryDataManager(WorldContextObject, __WorldContext) end
---@param WorldContextObject UObject
---@param String FString
---@param __WorldContext UObject
---@return FPalIndividualCharacterSaveParameter
function UBPL_CreativeMenu_C:ParseStringToParam(WorldContextObject, String, __WorldContext) end
---@param WazaString FString
---@param __WorldContext UObject
---@return TArray<EPalWazaID>
function UBPL_CreativeMenu_C:WazaStringToArray(WazaString, __WorldContext) end
---@param PassiveString FString
---@param __WorldContext UObject
---@return TArray<FName>
function UBPL_CreativeMenu_C:PassiveStringToArray(PassiveString, __WorldContext) end


