---@meta

---@class AModActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field ['Can Press Hotkey'] boolean
---@field EggHatcherIndicatorPrevLoc FVector
---@field EggHatcher UPalInteractiveObjectBoxComponent
---@field ShouldEnableInteract boolean
---@field EggHatchers TArray<APalBuildObject>
---@field InteractiveBoxArray TArray<UPalInteractiveObjectBoxComponent>
---@field ['Last Interacted Object'] UObject
---@field LastInteractedObjectIndicatorPosition FVector
---@field WidgetOnScreen boolean
---@field ['Player Manager'] UPalPlayerManager
---@field Players TMap<FGuid, APalPlayerState>
---@field DedicatedServer boolean
---@field ['Object Manager'] UPalMapObjectManager
---@field ['Game State'] APalGameStateInGame
---@field UseAutoHatch boolean
---@field PlayerSettings TMap<FGuid, boolean>
---@field EggIncubators TArray<UPalMapObjectModel>
---@field PlayerEggIncubators TMap<UPalMapObjectModel, FGuid>
---@field PlayerBreedFarms TMap<UPalMapObjectModel, FGuid>
---@field UsedMultiHatch boolean
---@field ByteArray TArray<uint8>
AModActor_C = {}

---@param ID int32
---@param PlayerId int32
function AModActor_C:GivePlayerID(ID, PlayerId) end
---@param Target_Egg UPalMapObjectModel
---@param PlayerUId FGuid
---@param TargetBreedFarm UPalMapObjectModel
---@param Egg UPalMapObjectModel
function AModActor_C:AutoPickUpEgg(Target_Egg, PlayerUId, TargetBreedFarm, Egg) end
---@param Target_Breed_Farm UPalMapObjectModel
function AModActor_C:EggCleanUp(Target_Breed_Farm) end
---@param InstanceId FGuid
function AModActor_C:FindBreedFarmBelongTo(InstanceId) end
function AModActor_C:SaveToJson() end
---@param Mod_Actor AModActor_C
function AModActor_C:Lua_ModInitialized(Mod_Actor) end
---@param AsPal_HUDIn_Game APalHUDInGame
---@param StackableWidget UPalUserWidgetStackableUI
---@return FString
function AModActor_C:PushedStackableUI(AsPal_HUDIn_Game, StackableWidget) end
---@param ModelPlayerUId FGuid
---@param PlayerUId FGuid
function AModActor_C:GetLoggedInPlayerUId(ModelPlayerUId, PlayerUId) end
---@param DeltaSeconds float
function AModActor_C:ReceiveTick(DeltaSeconds) end
---@param Message FString
function AModActor_C:PrintToModLoader(Message) end
function AModActor_C:PreBeginPlay() end
function AModActor_C:PostBeginPlay() end
---@param MapObjectModel UPalMapObjectModel
---@param Vector FVector
function AModActor_C:OnCreateMapObject(MapObjectModel, Vector) end
---@param PlayerUId FGuid
function AModActor_C:AutoHatch(PlayerUId) end
---@param pushedWidgetID FGuid
function AModActor_C:OnPushedStackableUI_Event(pushedWidgetID) end
function AModActor_C:BP_OnWidgetDeactivated_Event() end
---@param Player_Manager UPalPlayerManager
function AModActor_C:GetPlayerManagerFromLua(Player_Manager) end
---@param Object_Manager UPalMapObjectManager
function AModActor_C:GetObjectManagerFromLua(Object_Manager) end
---@param Game_State APalGameStateInGame
function AModActor_C:GetGameStateFromLua(Game_State) end
---@param Category EPalChatCategory
---@param Sender FString
---@param Sender_Player_UId FString
---@param Message FString
---@param Receiver_Player_UId FString
function AModActor_C:ChatReceived(Category, Sender, Sender_Player_UId, Message, Receiver_Player_UId) end
---@param InCharacter APalCharacter
function AModActor_C:FinishInit(InCharacter) end
---@param UId FString
---@param Enabled boolean
function AModActor_C:LoadPlayerSettings(UId, Enabled) end
---@param WorkProgress UPalWorkProgress
function AModActor_C:OnReflectWorkAmountDelegate_Event(WorkProgress) end
function AModActor_C:GetIncubatorsOnLaunch() end
---@param PlayerUId FString
---@param PlayerState APalPlayerState
function AModActor_C:GetPlayerStateFromLua(PlayerUId, PlayerState) end
function AModActor_C:GetBreedFarms() end
---@param EntryPoint int32
function AModActor_C:ExecuteUbergraph_ModActor(EntryPoint) end


