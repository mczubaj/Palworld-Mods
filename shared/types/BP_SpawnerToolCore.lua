---@meta

---@class ABP_SpawnerToolCore_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PalEditHistoryComponent UBP_PalEditHistoryComponent_C
---@field DefaultSceneRoot USceneComponent
---@field BoundKey FKey
---@field SpawnerUI UWBP_SpawnerUI_C
---@field bAllowUniqueAbilitiesOnAnyone boolean
---@field CreativeMenuDispatchParams UCreativeMenuDispatchParams_C
---@field ModVersion FString
---@field MenuHandle FGuid
---@field PalReturnRadius double
---@field ObtainQueueMap TMap<UPalIndividualCharacterHandle, APalPlayerController>
---@field SpawnerUIGuid FGuid
---@field SaveObject UCreativeMenuSaveObject_C
---@field bIsReady boolean
---@field OpenMenuKeybind FString
ABP_SpawnerToolCore_C = {}

function ABP_SpawnerToolCore_C:TryPerformFirstTimeSetup() end
function ABP_SpawnerToolCore_C:BindEvents() end
---@param DeadInfo FPalDeadInfo
function ABP_SpawnerToolCore_C:OnPlayerDeath(DeadInfo) end
---@param ID FPalInstanceID
function ABP_SpawnerToolCore_C:OnDespawn(ID) end
---@param Handle UPalIndividualCharacterHandle
function ABP_SpawnerToolCore_C:DespawnByHandle(Handle) end
function ABP_SpawnerToolCore_C:OnWorldLoaded() end
function ABP_SpawnerToolCore_C:HasCreativeMenu_ToServer() end
function ABP_SpawnerToolCore_C:CloseSpawnerUI() end
function ABP_SpawnerToolCore_C:OpenSpawnerUI() end
---@param Controller APalPlayerController
function ABP_SpawnerToolCore_C:OnServerAcknowledgePossession(Controller) end
function ABP_SpawnerToolCore_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_SpawnerToolCore_C:ReceiveTick(DeltaSeconds) end
---@param Message FString
function ABP_SpawnerToolCore_C:PrintToModLoader(Message) end
---@param Actor AActor
function ABP_SpawnerToolCore_C:LUA_CreativeMenuSetup(Actor) end
function ABP_SpawnerToolCore_C:LUA_NotifyCreativeMenuSpawned() end
---@param EntryPoint int32
function ABP_SpawnerToolCore_C:ExecuteUbergraph_BP_SpawnerToolCore(EntryPoint) end


