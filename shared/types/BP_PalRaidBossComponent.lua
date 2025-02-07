---@meta

---@class UBP_PalRaidBossComponent_C : UPalRaidBossComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VolumeActor AActor
---@field ServantActors TArray<UPalIndividualCharacterHandle>
---@field EnterAIActionClass TSubclassOf<UPalAIActionBase>
UBP_PalRaidBossComponent_C = {}

---@param ID FPalInstanceID
UBP_PalRaidBossComponent_C['On Despawn Pal'] = function(ID) end
---@param ID FPalInstanceID
UBP_PalRaidBossComponent_C['Spawn Delegate_Servant'] = function(ID) end
---@param CharacterID FName
---@param Level int32
---@param Location FVector
---@param Rotate FRotator
function UBP_PalRaidBossComponent_C:SpawnServantPal(CharacterID, Level, Location, Rotate) end
function UBP_PalRaidBossComponent_C:DespawnVolume() end
UBP_PalRaidBossComponent_C['Spawn Volume'] = function() end
---@param ID FPalInstanceID
UBP_PalRaidBossComponent_C['Spawn Delegate'] = function(ID) end
---@param SpawnInfo FPalRaidBossSpawnInfo
---@param Index int32
---@param SpawnerTransform FTransform
---@param Handle UPalIndividualCharacterHandle
UBP_PalRaidBossComponent_C['Spawn One Pal'] = function(SpawnInfo, Index, SpawnerTransform, Handle) end
---@param SpawnInfo FPalRaidBossSpawnInfoList
---@param SpawnTransform FTransform
function UBP_PalRaidBossComponent_C:SpawnRaidBoss_BP(SpawnInfo, SpawnTransform) end
---@param DeltaSeconds float
function UBP_PalRaidBossComponent_C:ReceiveTick(DeltaSeconds) end
---@param EndPlayReason EEndPlayReason::Type
function UBP_PalRaidBossComponent_C:ReceiveEndPlay(EndPlayReason) end
function UBP_PalRaidBossComponent_C:ReceiveBeginPlay() end
function UBP_PalRaidBossComponent_C:OnEndBattle_Server_BP() end
---@param EntryPoint int32
function UBP_PalRaidBossComponent_C:ExecuteUbergraph_BP_PalRaidBossComponent(EntryPoint) end


