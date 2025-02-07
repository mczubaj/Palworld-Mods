---@meta

---@class UBP_PalIncidentInvaderBase_C : UPalInvaderIncidentBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IndividualHandleList TArray<UPalIndividualCharacterHandle>
---@field MarchStartPoint FVector
---@field MemberCount int32
---@field SpawnedCount int32
---@field DummyNav_Start ABP_DummyNavigationInvoker_C
---@field DummyNav_Goal ABP_DummyNavigationInvoker_C
---@field CashedBaseCampLocation FVector
---@field IsBaseCampLocationCashed boolean
---@field OtomoNames TArray<FName>
---@field OtomoHandleList TArray<UPalIndividualCharacterHandle>
UBP_PalIncidentInvaderBase_C = {}

---@param IndividualHandle UPalIndividualCharacterHandle
---@param Index int32
function UBP_PalIncidentInvaderBase_C:GetIndividualHandleIndex(IndividualHandle, Index) end
---@param CharacterID FName
---@param IsUnique boolean
function UBP_PalIncidentInvaderBase_C:IsUniqueNPCID(CharacterID, IsUnique) end
---@param SpawnParameter FPalInvaderSpawnCharacterParameter
---@param Index int32
---@param SpawnRot FRotator
function UBP_PalIncidentInvaderBase_C:SpawnCharacter(SpawnParameter, Index, SpawnRot) end
---@param ID FPalInstanceID
function UBP_PalIncidentInvaderBase_C:OnDespawnOtomoByTerminate(ID) end
---@param DestroyedActor AActor
function UBP_PalIncidentInvaderBase_C:SetNullHandleWhenDestoryOtomo(DestroyedActor) end
---@param HolderController AController
---@param OtomoPal APalCharacter
function UBP_PalIncidentInvaderBase_C:OnOtomoSpawned(HolderController, OtomoPal) end
---@param SpawnCenter FVector
---@param Rot FRotator
---@param Index int32
---@return FVector
function UBP_PalIncidentInvaderBase_C:CalcSpawnLocation(SpawnCenter, Rot, Index) end
---@param SpawnParameter FPalInvaderSpawnCharacterParameter
---@return TSubclassOf<APalAIController>
function UBP_PalIncidentInvaderBase_C:GetNPCAIControllerClass(SpawnParameter) end
---@param Result boolean
function UBP_PalIncidentInvaderBase_C:IsSquad(Result) end
---@param StartLocation FVector
function UBP_PalIncidentInvaderBase_C:GetStartLocation(StartLocation) end
---@param MemberController TArray<APalAIController>
function UBP_PalIncidentInvaderBase_C:OnAllCharacterSpawned(MemberController) end
---@param SpawnedCharacter APalCharacter
function UBP_PalIncidentInvaderBase_C:OnCharacterSpawned(SpawnedCharacter) end
---@param CharacterLocationType EPalCharacterLocationType
UBP_PalIncidentInvaderBase_C['Get Character Location Type'] = function(CharacterLocationType) end
---@param StartLocation FVector
function UBP_PalIncidentInvaderBase_C:SpawnMemberCharacters(StartLocation) end
---@param Location FVector
function UBP_PalIncidentInvaderBase_C:GetTargetBaseCampPosition(Location) end
function UBP_PalIncidentInvaderBase_C:TerminateProc() end
function UBP_PalIncidentInvaderBase_C:EndProc() end
function UBP_PalIncidentInvaderBase_C:StartProc() end
---@param DummyNav ABP_DummyNavigationInvoker_C
function UBP_PalIncidentInvaderBase_C:SpawnDummyNavInvoker(DummyNav) end
function UBP_PalIncidentInvaderBase_C:DummyActorSetLoaction() end
---@param Actor AActor
function UBP_PalIncidentInvaderBase_C:OnDestroyActor(Actor) end
---@param SpawnedIndex int32
---@param GoalPosition FVector
function UBP_PalIncidentInvaderBase_C:GoalPointPerAgent(SpawnedIndex, GoalPosition) end
---@param Character APalCharacter
function UBP_PalIncidentInvaderBase_C:RemoveHandleList(Character) end
---@param ID FPalInstanceID
---@param Handle UPalIndividualCharacterHandle
function UBP_PalIncidentInvaderBase_C:FindIndividualHandle(ID, Handle) end
---@param ID FPalInstanceID
function UBP_PalIncidentInvaderBase_C:SpawnDelegate(ID) end
---@param Index int32
---@param RandomPos FVector
function UBP_PalIncidentInvaderBase_C:RandomTransform(Index, RandomPos) end
function UBP_PalIncidentInvaderBase_C:OnEndInvade() end
function UBP_PalIncidentInvaderBase_C:OnInitialized() end
function UBP_PalIncidentInvaderBase_C:OnStartInvade() end
---@param EntryPoint int32
function UBP_PalIncidentInvaderBase_C:ExecuteUbergraph_BP_PalIncidentInvaderBase(EntryPoint) end


