---@meta

---@class UCOMP_SpawnerToolReceiver_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field bEnableLogging boolean
---@field ReturnRadius double
---@field SpawnList TMap<UPalIndividualCharacterHandle, FFNetSpawnInfo>
---@field PlayerList TArray<FString>
---@field SpawnerUI UWBP_SpawnerUI_C
---@field EggLotteryDataManager ABP_EggLotteryDataManager_C
UCOMP_SpawnerToolReceiver_C = {}

---@param ItemId FName
---@return boolean
function UCOMP_SpawnerToolReceiver_C:DoesItemExist(ItemId) end
---@param Items TArray<FF_ItemKitItemData>
---@return FString
function UCOMP_SpawnerToolReceiver_C:FormatKitArray(Items) end
---@param ItemIDAndNum FPalStaticItemIdAndNum
function UCOMP_SpawnerToolReceiver_C:CM_AddItemLog(ItemIDAndNum) end
function UCOMP_SpawnerToolReceiver_C:Setup() end
---@param PlayerState APalPlayerState
---@param ItemId FName
---@param Amount int32
function UCOMP_SpawnerToolReceiver_C:HandleAddItemNoLog(PlayerState, ItemId, Amount) end
---@param PlayerState APalPlayerState
---@param ItemId FName
---@param Amount int32
function UCOMP_SpawnerToolReceiver_C:HandleAddItem(PlayerState, ItemId, Amount) end
---@param PlayerState APalPlayerState
---@param Amount int32
function UCOMP_SpawnerToolReceiver_C:HandleAddRelic(PlayerState, Amount) end
---@param SaveParameter FPalIndividualCharacterSaveParameter
function UCOMP_SpawnerToolReceiver_C:HandleAddEggCustom(SaveParameter) end
---@param PalPlayerState APalPlayerState
---@param EggId FName
function UCOMP_SpawnerToolReceiver_C:HandleAddEgg(PalPlayerState, EggId) end
---@param ID FPalInstanceID
function UCOMP_SpawnerToolReceiver_C:HandleCapture_Internal(ID) end
---@param SaveParam FPalIndividualCharacterSaveParameter
---@param bShouldObtainAsEgg boolean
function UCOMP_SpawnerToolReceiver_C:HandleCapture(SaveParam, bShouldObtainAsEgg) end
---@param NetworkOwner AActor
---@param SaveParam FPalIndividualCharacterSaveParameter
---@param SpawnInfo FFNetSpawnInfo
function UCOMP_SpawnerToolReceiver_C:HandleSpawn(NetworkOwner, SaveParam, SpawnInfo) end
---@param Message FText
function UCOMP_SpawnerToolReceiver_C:Log(Message) end
---@param Kit TArray<FF_ItemKitItemData>
---@param targetData FFTargetData
function UCOMP_SpawnerToolReceiver_C:AddKit(Kit, targetData) end
function UCOMP_SpawnerToolReceiver_C:ReceiveBeginPlay() end
---@param Message FString
function UCOMP_SpawnerToolReceiver_C:PrintToModLoader(Message) end
---@param ID FName
---@param Count int32
---@param targetData FFTargetData
function UCOMP_SpawnerToolReceiver_C:AddItem_ToServer(ID, Count, targetData) end
---@param CharacterParams FPalIndividualCharacterSaveParameter
---@param SpawnInfo FFNetSpawnInfo
function UCOMP_SpawnerToolReceiver_C:SpawnCharacter_ToServer(CharacterParams, SpawnInfo) end
---@param ID FPalInstanceID
function UCOMP_SpawnerToolReceiver_C:OnSpawn(ID) end
function UCOMP_SpawnerToolReceiver_C:FetchPlayerList_ToServer() end
---@param Players TArray<FString>
function UCOMP_SpawnerToolReceiver_C:SendPlayerList_ToClient(Players) end
---@param ItemIDAndNum FPalStaticItemIdAndNum
function UCOMP_SpawnerToolReceiver_C:SendItemLog_ToClient(ItemIDAndNum) end
---@param EntryPoint int32
function UCOMP_SpawnerToolReceiver_C:ExecuteUbergraph_COMP_SpawnerToolReceiver(EntryPoint) end


