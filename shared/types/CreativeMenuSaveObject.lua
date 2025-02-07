---@meta

---@class UCreativeMenuSaveObject_C : USaveGame
---@field UberGraphFrame FPointerToUberGraphFrame
---@field bIsFirstTime boolean
---@field TemplateData TArray<FFStoredTemplateStruct>
---@field Keybinds TMap<FName, FKey>
UCreativeMenuSaveObject_C = {}

function UCreativeMenuSaveObject_C:CompleteFirstTime() end
---@param Index int32
function UCreativeMenuSaveObject_C:Remove(Index) end
---@param Name FString
---@param Version FString
---@param Character_Save_Parameter FPalIndividualCharacterSaveParameter
function UCreativeMenuSaveObject_C:Add(Name, Version, Character_Save_Parameter) end
---@param WasSaveSuccessful boolean
function UCreativeMenuSaveObject_C:Save(WasSaveSuccessful) end
---@param Message FString
function UCreativeMenuSaveObject_C:PrintToModLoader(Message) end
---@param EntryPoint int32
function UCreativeMenuSaveObject_C:ExecuteUbergraph_CreativeMenuSaveObject(EntryPoint) end


