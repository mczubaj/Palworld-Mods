---@enum EClassRepNodeMapping
EClassRepNodeMapping = {
    NotRouted = 0,
    RelevantAllConnections = 1,
    Spatialize_Static = 2,
    Spatialize_Dynamic = 3,
    Spatialize_Dormancy = 4,
    EClassRepNodeMapping_MAX = 5,
}

---@enum EEnterWaterFlag
EEnterWaterFlag = {
    None = 0,
    OverlapWaterVolume = 1,
    RaycastWaterPlane = 2,
    EEnterWaterFlag_MAX = 3,
}

---@enum EFailedCaptureType
EFailedCaptureType = {
    None = 0,
    NoMPZero = 1,
    TestFailed = 2,
    EFailedCaptureType_MAX = 3,
}

---@enum EHumanBone
EHumanBone = {
    Pelvis = 0,
    Spine1 = 1,
    Spine2 = 2,
    Spine3 = 3,
    Neck = 4,
    Head = 5,
    LeftThigh = 6,
    LeftCalf = 7,
    LeftFoot = 8,
    RightThigh = 9,
    RightCalf = 10,
    RightFoot = 11,
    LeftClavicle = 12,
    LeftUpperArm = 13,
    LeftLowerArm = 14,
    LeftHand = 15,
    RightClavicle = 16,
    RightUpperArm = 17,
    RightLowerArm = 18,
    RightHand = 19,
    EnumCount = 20,
    EHumanBone_MAX = 21,
}

---@enum EPalACEWordFilterAPIType
EPalACEWordFilterAPIType = {
    Unknown = 0,
    China = 1,
    Global = 2,
    EPalACEWordFilterAPIType_MAX = 3,
}

---@enum EPalACEWordFilterSceneType
EPalACEWordFilterSceneType = {
    PlayerName = 0,
    PalName = 1,
    WorldName = 2,
    GuildName = 3,
    SignBoard = 4,
    TextChat = 5,
    EPalACEWordFilterSceneType_MAX = 6,
}

---@enum EPalAIActionBaseCampRecoverHungryEatState
EPalAIActionBaseCampRecoverHungryEatState = {
    TurnToFood = 0,
    Eat = 1,
    EPalAIActionBaseCampRecoverHungryEatState_MAX = 2,
}

---@enum EPalAIActionBaseCampSleepActivelyMode
EPalAIActionBaseCampSleepActivelyMode = {
    ApproachToBed = 0,
    WalkAround = 1,
    EPalAIActionBaseCampSleepActivelyMode_MAX = 2,
}

---@enum EPalAIActionCategory
EPalAIActionCategory = {
    Undefined = 0,
    Call = 1,
    Coop = 2,
    NullAction = 3,
    EPalAIActionCategory_MAX = 4,
}

---@enum EPalAIActionType
EPalAIActionType = {
    None = 0,
    Action1 = 1,
    Leave = 2,
    Cooperation = 3,
    Warning = 4,
    SideMove = 5,
    EPalAIActionType_MAX = 6,
}

---@enum EPalAIMoveResultFailedType
EPalAIMoveResultFailedType = {
    Undefined = 0,
    PartialNavMesh = 1,
    CannotTeleportInsteadOfMove = 2,
    EPalAIMoveResultFailedType_MAX = 3,
}

---@enum EPalAIResponseType
EPalAIResponseType = {
    Ignore = 0,
    Escape = 1,
    Battle = 2,
    Special = 3,
    EPalAIResponseType_MAX = 4,
}

---@enum EPalAISensorSearchQueryPlayer
EPalAISensorSearchQueryPlayer = {
    IncludePlayer = 0,
    IgnorePlayer = 1,
    PlayerOnly = 2,
    EPalAISensorSearchQueryPlayer_MAX = 3,
}

---@enum EPalAISightJudgementType
EPalAISightJudgementType = {
    None = 0,
    AimedByPlayer = 1,
    EPalAISightJudgementType_MAX = 2,
}

---@enum EPalAchivementCategory
EPalAchivementCategory = {
    BossDefeat = 0,
    PalCapture = 1,
    PalDex = 2,
    EPalAchivementCategory_MAX = 3,
}

---@enum EPalActionType
EPalActionType = {
    None = 0,
    Sleep = 1,
    WakeUp = 2,
    Death = 3,
    Revive = 4,
    Menace = 5,
    Eat = 6,
    Stan = 7,
    KnockBack = 8,
    BlowAway = 9,
    GeneralAttack = 10,
    MeleeSkill = 11,
    ShootSkill = 12,
    JumpAction = 13,
    RollingAction = 14,
    FullRideAction = 15,
    Turn90R = 16,
    Turn90L = 17,
    Turn180R = 18,
    Turn180L = 19,
    TurnToTarget = 20,
    DiscoverySomething = 21,
    ForwardWalk = 22,
    BackwardWalk = 23,
    Provocation = 24,
    CommonWork = 25,
    Architecture = 26,
    Deforest = 27,
    Mining = 28,
    Feeding = 29,
    GrowupPromotion = 30,
    Watering = 31,
    WateringOneshot = 32,
    Harvest = 33,
    GenerateEnergy = 34,
    GenerateEnergyFire = 35,
    GenerateEnergyElectric = 36,
    Cooking = 37,
    Happy = 38,
    IdleInSpa = 39,
    Ignition = 40,
    TransportItem = 41,
    Cool = 42,
    SpawnItem = 43,
    Resuscitation = 44,
    Liftup = 45,
    BeLiftup = 46,
    Throw = 47,
    BeThrown = 48,
    HumanFeeding = 49,
    HumanFeeding_DoMotion = 50,
    GetupUtubuse_orRight = 51,
    GetupAomuke_orRight = 52,
    ReturnToBaseCamp = 53,
    WaitLoadingAction = 54,
    HumanPetting = 55,
    PalPetting = 56,
    Talk = 57,
    Listen_A = 58,
    Listen_B = 59,
    ChairSit = 60,
    ChairSitMeal = 61,
    ChairSitDrink = 62,
    ChairSitMeat = 63,
    GroundSit = 64,
    SpawnOtomoPal = 65,
    PartnerSkill = 66,
    CommandPal = 67,
    ReturnOtomoPal = 68,
    Step_Forward = 69,
    Step_Back = 70,
    Step_Left = 71,
    Step_Right = 72,
    ElectricShock = 73,
    UnlockCagePalLock = 74,
    CutPalMeat = 75,
    Grappling = 76,
    PalRandomRest = 77,
    PalRandomRest_BaseCamp = 78,
    LargeDown = 79,
    DefenseGunner = 80,
    DefenseWait = 81,
    OpenOilrigGoalBox = 82,
    Mimicry = 83,
    MimicryEncount = 84,
    PlayerSitChair = 85,
    DigOut = 86,
    RunOnSpot = 87,
    RunOnSpot_Hard = 88,
    AirDash_Forward = 89,
    AirDash_Back = 90,
    AirDash_Right = 91,
    AirDash_Left = 92,
    EPalActionType_MAX = 93,
}

---@enum EPalActiveSkillSlotId
EPalActiveSkillSlotId = {
    Default = 0,
    PartnerSkill = 100,
    EPalActiveSkillSlotId_MAX = 101,
}

---@enum EPalAdditionalEffectType
EPalAdditionalEffectType = {
    None = 0,
    Stun = 1,
    Sleep = 2,
    Poison = 3,
    Burn = 4,
    Wetness = 5,
    Freeze = 6,
    Electrical = 7,
    Muddy = 8,
    IvyCling = 9,
    Darkness = 10,
    AttackUp = 11,
    DefenseUp = 12,
    Recovery = 13,
    Trap_LegHold = 14,
    EPalAdditionalEffectType_MAX = 15,
}

---@enum EPalAllowConnectPlatform
EPalAllowConnectPlatform = {
    Steam = 0,
    Xbox = 1,
    Mac = 2,
    SteamAndXbox = 3,
    EPalAllowConnectPlatform_MAX = 4,
}

---@enum EPalApplySaveDataOrder
EPalApplySaveDataOrder = {
    Early = 0,
    Normal = 1,
    Late = 2,
    Num = 3,
    EPalApplySaveDataOrder_MAX = 4,
}

---@enum EPalArenaBattleResult
EPalArenaBattleResult = {
    None = 0,
    Win_Player1 = 1,
    Win_Player2 = 2,
    Draw = 3,
    EPalArenaBattleResult_MAX = 4,
}

---@enum EPalArenaInstanceState
EPalArenaInstanceState = {
    Open = 0,
    Playing = 1,
    EPalArenaInstanceState_MAX = 2,
}

---@enum EPalArenaPlayer
EPalArenaPlayer = {
    Player1 = 0,
    Player2 = 1,
    EPalArenaPlayer_MAX = 2,
}

---@enum EPalArenaPlayerIndex
EPalArenaPlayerIndex = {
    None = 0,
    Player1 = 1,
    Player2 = 2,
    EPalArenaPlayerIndex_MAX = 3,
}

---@enum EPalArenaSequenceType
EPalArenaSequenceType = {
    None = 0,
    PartySelect = 1,
    PreBattle = 2,
    InBattle = 3,
    Result = 4,
    EPalArenaSequenceType_MAX = 5,
}

---@enum EPalArenaSetupState
EPalArenaSetupState = {
    None = 0,
    Running = 1,
    Completed = 2,
    EPalArenaSetupState_MAX = 3,
}

---@enum EPalAsyncSaveProcessState
EPalAsyncSaveProcessState = {
    Collecting = 0,
    CollectFailed = 1,
    Saving = 2,
    SaveCompleted = 3,
    SaveFailed = 4,
    EPalAsyncSaveProcessState_MAX = 5,
}

---@enum EPalAttackType
EPalAttackType = {
    Waza = 0,
    Weapon = 1,
    Turret = 2,
    SlipDamage = 3,
    Mine = 4,
    WorkActionAttack = 5,
    EPalAttackType_MAX = 6,
}

---@enum EPalAudioBus
EPalAudioBus = {
    None = 0,
    Master = 1,
    BGM = 2,
    JINGLE = 3,
    SE = 4,
    Ambient = 5,
    PalVoice = 6,
    HumanVoice = 7,
    UI = 8,
    MAX = 9,
}

---@enum EPalAudioFadeType
EPalAudioFadeType = {
    None = 0,
    FadeIn = 1,
    FadeOut = 2,
    EPalAudioFadeType_MAX = 3,
}

---@enum EPalAudioRTPC
EPalAudioRTPC = {
    Field_Time = 0,
    Sliding_Speed = 1,
    EPalAudioRTPC_MAX = 2,
}

---@enum EPalAudioState
EPalAudioState = {
    None = 0,
    VillageA = 1,
    VillageB = 2,
    BaseCamp = 3,
    InDoor = 4,
    BossRoom = 5,
    Grassland = 6,
    Forest = 7,
    Desert = 8,
    Mountain = 9,
    Caution = 10,
    Fight = 11,
    End = 12,
    Arena_PartySelect = 13,
    Arena_PreBattle = 14,
    Arena_InBattle = 15,
    Arena_Result = 16,
    Battle_Cute = 17,
    Battle_Cool = 18,
    Battle_Strong = 19,
    Battle_Human_Common = 20,
    Battle_Human_Villain = 21,
    Battle_FieldBoss = 22,
    Battle_Predator = 23,
    Battle_Machine = 24,
    Battle_Legend = 25,
    Battle_RaidBoss = 26,
    Battle_TowerBoss = 27,
    Battle_RaidBoss_KingBahamut = 28,
    Battle_RaidBoss_DarkMechaDragon = 29,
    Explore = 30,
    Battle = 31,
    Alive = 32,
    Dead = 33,
    EPalAudioState_MAX = 34,
}

---@enum EPalAudioStateGroup
EPalAudioStateGroup = {
    InRaid = 0,
    InExplore = 1,
    InSpot = 2,
    InField = 3,
    InArena = 4,
    InBattle = 5,
    BattleBGM = 6,
    SpotName = 7,
    Biome = 8,
    RaidState = 9,
    ArenaState = 10,
    Player_MainState = 11,
    Player_BattleState = 12,
    Player_Life = 13,
    EPalAudioStateGroup_MAX = 14,
}

---@enum EPalAudioTrigger
EPalAudioTrigger = {
    None = 0,
    BattleWin = 1,
    RaidEnd = 2,
    Captured = 3,
    GameOver = 4,
    EPalAudioTrigger_MAX = 5,
}

---@enum EPalBaseCampAssignType
EPalBaseCampAssignType = {
    None = 0,
    Work = 1,
    WorkableObject = 2,
    Defense = 3,
    EPalBaseCampAssignType_MAX = 4,
}

---@enum EPalBaseCampEnergyStorageConsumePriority
EPalBaseCampEnergyStorageConsumePriority = {
    Normal = 0,
    Low = 1,
    Num = 2,
    EPalBaseCampEnergyStorageConsumePriority_MAX = 3,
}

---@enum EPalBaseCampFacilityRequestResult
EPalBaseCampFacilityRequestResult = {
    FailedNotExistsAnyFacilities = 0,
    FailedNotExistsTheFacility = 1,
    FailedAlreadyUsing = 2,
    Success = 3,
    EPalBaseCampFacilityRequestResult_MAX = 4,
}

---@enum EPalBaseCampFacilityUsageState
EPalBaseCampFacilityUsageState = {
    Vacant = 0,
    Reserved = 1,
    Using = 2,
    EPalBaseCampFacilityUsageState_MAX = 3,
}

---@enum EPalBaseCampItemContainerType
EPalBaseCampItemContainerType = {
    Chest = 0,
    GuildChest = 1,
    Other = 2,
    EPalBaseCampItemContainerType_MAX = 3,
}

---@enum EPalBaseCampModuleEnergyState
EPalBaseCampModuleEnergyState = {
    Providable = 0,
    Waiting = 1,
    EPalBaseCampModuleEnergyState_MAX = 2,
}

---@enum EPalBaseCampModuleTransportItemTransportPriority
EPalBaseCampModuleTransportItemTransportPriority = {
    None = 0,
    GuildChest = 1,
    BaseCampChest = 2,
    BaseCampChestHigh = 3,
    Requirement = 4,
    FoodBox = 5,
    FoodBoxCooling = 6,
    SpecificItemHighest = 7,
    EPalBaseCampModuleTransportItemTransportPriority_MAX = 8,
}

---@enum EPalBaseCampModuleTransportItemTransportableItemExtraType
EPalBaseCampModuleTransportItemTransportableItemExtraType = {
    None = 0,
    OnlyCorruptible = 1,
    EPalBaseCampModuleTransportItemTransportableItemExtraType_MAX = 2,
}

---@enum EPalBaseCampModuleType
EPalBaseCampModuleType = {
    None = 0,
    Energy = 1,
    Medical = 2,
    TransportItemDirector = 3,
    ResourceCollector = 4,
    ItemStorages = 5,
    FacilityReservation = 6,
    ObjectMaintenance = 7,
    PassiveEffect = 8,
    ItemStackInfo = 9,
    EPalBaseCampModuleType_MAX = 10,
}

---@enum EPalBaseCampOperationResult
EPalBaseCampOperationResult = {
    Success = 0,
    FailedNotFoundNetworkTransmitter = 1,
    FailedNotFoundBaseCamp = 2,
    FailedNotRequestedFromBaseCampPoint = 3,
    FailedNotFoundOwnerMapObjectModel = 4,
    FailedDismantleMapObject = 5,
    EPalBaseCampOperationResult_MAX = 6,
}

---@enum EPalBaseCampPassiveEffectType
EPalBaseCampPassiveEffectType = {
    None = 0,
    WorkSuitability = 1,
    WorkHard = 2,
    AllWorkSpeed = 3,
    SanityDecreaseSuppressor = 4,
    EPalBaseCampPassiveEffectType_MAX = 5,
}

---@enum EPalBaseCampPassiveEffectWorkHardType
EPalBaseCampPassiveEffectWorkHardType = {
    Easy = 0,
    Normal = 1,
    Hard = 2,
    VeryHard = 3,
    EPalBaseCampPassiveEffectWorkHardType_MAX = 4,
}

---@enum EPalBaseCampRecoverStatusType
EPalBaseCampRecoverStatusType = {
    Hungry = 0,
    Sick = 1,
    EPalBaseCampRecoverStatusType_MAX = 2,
}

---@enum EPalBaseCampState
EPalBaseCampState = {
    NotAvailable = 0,
    Normal = 1,
    EPalBaseCampState_MAX = 2,
}

---@enum EPalBaseCampWorkResult
EPalBaseCampWorkResult = {
    Success = 0,
    FailedNotFoundBaseCamp = 1,
    FailedNotFoundWork = 2,
    FailedNotMatchWorkType = 3,
    EPalBaseCampWorkResult_MAX = 4,
}

---@enum EPalBaseCampWorkerAssignResult
EPalBaseCampWorkerAssignResult = {
    Success = 0,
    FailedNotFoundBaseCamp = 1,
    FailedNotFoundWork = 2,
    FailedOverflowAssignCount = 3,
    FailedCharacterHandleMissing = 4,
    EPalBaseCampWorkerAssignResult_MAX = 5,
}

---@enum EPalBaseCampWorkerDirectionBattleType
EPalBaseCampWorkerDirectionBattleType = {
    AttackToEnemyInBaseCamp = 0,
    NoBattle = 1,
    Num = 2,
    FirstValue = 0,
    EPalBaseCampWorkerDirectionBattleType_MAX = 3,
}

---@enum EPalBaseCampWorkerDirectorState
EPalBaseCampWorkerDirectorState = {
    Init = 0,
    WaitForLoadingAround = 1,
    Active = 2,
    EPalBaseCampWorkerDirectorState_MAX = 3,
}

---@enum EPalBaseCampWorkerEventPriority
EPalBaseCampWorkerEventPriority = {
    Top = 0,
    Default = 1,
    EPalBaseCampWorkerEventPriority_MAX = 2,
}

---@enum EPalBaseCampWorkerEventType
EPalBaseCampWorkerEventType = {
    None = 0,
    Escape = 1,
    OverworkDeath = 2,
    Sick = 3,
    DodgeWork = 4,
    DodgeWork_Short = 5,
    DodgeWork_Sleep = 6,
    EatTooMuch = 7,
    Trantrum = 8,
    FightWithFriend = 9,
    TurnFoodBox = 10,
    DestroyBuilding = 11,
    EPalBaseCampWorkerEventType_MAX = 12,
}

---@enum EPalBaseCampWorkerSickType
EPalBaseCampWorkerSickType = {
    None = 0,
    Cold = 1,
    Sprain = 2,
    Bulimia = 3,
    GastricUlcer = 4,
    Fracture = 5,
    Weakness = 6,
    DepressionSprain = 7,
    DisturbingElement = 8,
    EPalBaseCampWorkerSickType_MAX = 9,
}

---@enum EPalBaseCampWorkerTaskCheck
EPalBaseCampWorkerTaskCheck = {
    None = 0,
    SleepAtNight = 1,
    EPalBaseCampWorkerTaskCheck_MAX = 2,
}

---@enum EPalBaseCampWorkerTaskCheckResponse
EPalBaseCampWorkerTaskCheckResponse = {
    ExistsTask = 0,
    EPalBaseCampWorkerTaskCheckResponse_MAX = 1,
}

---@enum EPalBaseCampWorkerTaskType
EPalBaseCampWorkerTaskType = {
    Undefined = 0,
    IgnitionTorchAtNight = 1,
    EPalBaseCampWorkerTaskType_MAX = 2,
}

---@enum EPalBaseCampWorkerWalkAroundState
EPalBaseCampWorkerWalkAroundState = {
    WalkAround = 0,
    Rest = 1,
    EPalBaseCampWorkerWalkAroundState_MAX = 2,
}

---@enum EPalBattleBGMType
EPalBattleBGMType = {
    None = 0,
    Cute = 1,
    Cool = 2,
    Strong = 3,
    Human_Common = 4,
    Human_Villain = 5,
    FieldBoss = 6,
    Predator = 7,
    Machine = 8,
    Legend = 9,
    RaidBoss = 10,
    TowerBoss = 11,
    RaidBoss_KingBahamut = 12,
    RaidBoss_DarkMechaDragon = 13,
    EPalBattleBGMType_MAX = 14,
}

---@enum EPalBiologicalGradeComparedResult
EPalBiologicalGradeComparedResult = {
    Greater = 0,
    Equal = 1,
    Smaller = 2,
    EPalBiologicalGradeComparedResult_MAX = 3,
}

---@enum EPalBiomeType
EPalBiomeType = {
    Undefined = 0,
    Meadow = 1,
    Desert = 2,
    Coast = 3,
    IceSnow = 4,
    Volcano = 5,
    CentralCity = 6,
    SkyCityCity = 7,
    WorldTree = 8,
    EPalBiomeType_MAX = 9,
}

---@enum EPalBlowVelocityOwner
EPalBlowVelocityOwner = {
    None = 0,
    AttackCharacter = 1,
    HitComponent = 2,
    HitLocation = 3,
    EPalBlowVelocityOwner_MAX = 4,
}

---@enum EPalBodyLocationType
EPalBodyLocationType = {
    None = 0,
    Head = 1,
    Mouth = 2,
    BulletMuzzle = 3,
    BodyCenter = 4,
    JumpEffect = 5,
    EPalBodyLocationType_MAX = 6,
}

---@enum EPalBodyPartsType
EPalBodyPartsType = {
    Weak = 0,
    Normal = 1,
    Strong = 2,
    Invincible = 3,
    EPalBodyPartsType_MAX = 4,
}

---@enum EPalBodyTemperatureState
EPalBodyTemperatureState = {
    Default = 0,
    Cold = 1,
    Heat = 2,
    EPalBodyTemperatureState_MAX = 3,
}

---@enum EPalBossBattleCombatResult
EPalBossBattleCombatResult = {
    None = 0,
    Won = 1,
    TimeUp = 2,
    AllDead = 3,
    EPalBossBattleCombatResult_MAX = 4,
}

---@enum EPalBossBattleDifficulty
EPalBossBattleDifficulty = {
    None = 0,
    Normal = 1,
    Hard = 2,
    EPalBossBattleDifficulty_MAX = 3,
}

---@enum EPalBossBattleSequenceType
EPalBossBattleSequenceType = {
    None = 0,
    Opening = 1,
    Combat = 2,
    Ending = 3,
    Completed = 4,
    EPalBossBattleSequenceType_MAX = 5,
}

---@enum EPalBossBattleState
EPalBossBattleState = {
    Open = 0,
    PreBattle = 1,
    InBattle = 2,
    AfterBattle = 3,
    EPalBossBattleState_MAX = 4,
}

---@enum EPalBossType
EPalBossType = {
    None = 0,
    GrassBoss = 1,
    ElectricBoss = 2,
    ForestBoss = 3,
    SnowBoss = 4,
    DesertBoss = 5,
    SakurajimaBoss = 6,
    VikingBoss = 7,
    Max = 8,
}

---@enum EPalBuildInstallCheckModeType
EPalBuildInstallCheckModeType = {
    Normal = 0,
    InstallAtReticle = 1,
    EPalBuildInstallCheckModeType_MAX = 2,
}

---@enum EPalBuildObjectInstallStrategy
EPalBuildObjectInstallStrategy = {
    Normal = 0,
    WallV2 = 1,
    SinkableNormal = 2,
    Foundation = 3,
    Roof = 4,
    Stairs = 5,
    GroundWall = 6,
    GroundWallV2 = 7,
    BaseCampPoint = 8,
    AttachToWall = 9,
    AttachToCeil = 10,
    PlaceOnItemProvider = 11,
    Pillar = 12,
    StandVerticalNotOverlap = 13,
    PalStorage = 14,
    Floor = 15,
    Wall = 16,
    Undefined = 17,
    EPalBuildObjectInstallStrategy_MAX = 18,
}

---@enum EPalBuildObjectState
EPalBuildObjectState = {
    Init = 0,
    Simulation = 1,
    Building = 2,
    Available = 3,
    NotAvailable = 4,
    EPalBuildObjectState_MAX = 5,
}

---@enum EPalBuildObjectTypeA
EPalBuildObjectTypeA = {
    Product = 0,
    Pal = 1,
    Storage = 2,
    Food = 3,
    Infrastructure = 4,
    Light = 5,
    Foundation = 6,
    Defense = 7,
    Other = 8,
    Furniture = 9,
    Dismantle = 10,
    EPalBuildObjectTypeA_MAX = 11,
}

---@enum EPalBuildObjectTypeB
EPalBuildObjectTypeB = {
    Prod_Craft = 0,
    Prod_Resource = 1,
    Prod_Furnace = 2,
    Prod_Medicine = 3,
    Pal_Capture = 4,
    Pal_Breed = 5,
    Pal_Modify = 6,
    Infra_Medical = 7,
    Infra_Storage = 8,
    Infra_Trade = 9,
    Infra_GeneratePower = 10,
    Infra_Defense = 11,
    Infra_Environment = 12,
    Food_Basic = 13,
    Food_Agriculture = 14,
    Food_Cooking = 15,
    Food_Livestock = 16,
    Found_Basic = 17,
    Found_House = 18,
    Other = 19,
    EPalBuildObjectTypeB_MAX = 20,
}

---@enum EPalBuildObjectVisualType
EPalBuildObjectVisualType = {
    Invisible = 0,
    Normal = 1,
    Simulation = 2,
    CannotInstall = 3,
    Building = 4,
    BuildComplete = 5,
    DismantleTarget = 6,
    Damage = 7,
    Repair = 8,
    EPalBuildObjectVisualType_MAX = 9,
}

---@enum EPalBuildProcessState
EPalBuildProcessState = {
    Building = 0,
    Completed = 1,
    EPalBuildProcessState_MAX = 2,
}

---@enum EPalBuildingLimitType
EPalBuildingLimitType = {
    Invalid = 0,
    VeryLow = 1,
    Low = 2,
    Medium = 3,
    High = 4,
    VeryHigh = 5,
    NoLimit = 6,
    EPalBuildingLimitType_MAX = 7,
}

---@enum EPalBuildingNumWarningType
EPalBuildingNumWarningType = {
    None = 0,
    Warning = 1,
    Limit = 2,
    EPalBuildingNumWarningType_MAX = 3,
}

---@enum EPalCaptureSphereLevelType
EPalCaptureSphereLevelType = {
    Undefined = 0,
    Normal = 1,
    Mega = 2,
    Giga = 3,
    Master = 4,
    Tera = 5,
    Legend = 6,
    Ultimate = 7,
    Exotic = 8,
    EPalCaptureSphereLevelType_MAX = 9,
}

---@enum EPalCharacterCompleteDelegatePriority
EPalCharacterCompleteDelegatePriority = {
    SetTrainer = 0,
    Default = 1,
    PostDefault = 2,
    EPalCharacterCompleteDelegatePriority_MAX = 3,
}

---@enum EPalCharacterContainerOperationResult
EPalCharacterContainerOperationResult = {
    Success = 0,
    FailedTerminatedManager = 1,
    FailedIssueContainerId = 2,
    FailedOverflowSlotNum = 3,
    FailedNotFoundContainer = 4,
    FailedNotFoundSlot = 5,
    FailedNotFoundCharacter = 6,
    FailedNotFoundCharacterParameter = 7,
    FailedIsLocalOnlyContainer = 8,
    FailedNoContainerInfoInResponse = 9,
    FailedNotEnoughSlotSpace = 10,
    FailedCannotGetSlotInfo = 11,
    FailedChangedSlotInfoRequestedOne = 12,
    FailedCannotSetTargetHandle = 13,
    FailedAlreadyLocked = 14,
    FailedNotJoinedPlayer = 15,
    FailedTransactionLocked = 16,
    FailedSimple = 17,
    FailedServerCode = 18,
    EPalCharacterContainerOperationResult_MAX = 19,
}

---@enum EPalCharacterContainerSortType
EPalCharacterContainerSortType = {
    PaldexNo_Asc = 0,
    Level_Desc = 1,
    ElementType = 2,
    BossFlag = 3,
    EPalCharacterContainerSortType_MAX = 4,
}

---@enum EPalCharacterImportanceType
EPalCharacterImportanceType = {
    Undefined = 0,
    AllUpdate = 1,
    Nearest = 2,
    Near = 3,
    MidInSight = 4,
    FarInSight = 5,
    MidOutSight = 6,
    FarOutSight = 7,
    Farthest = 8,
    EPalCharacterImportanceType_MAX = 9,
}

---@enum EPalCharacterLocationType
EPalCharacterLocationType = {
    None = 0,
    Normal = 1,
    Warning = 2,
    EPalCharacterLocationType_MAX = 3,
}

---@enum EPalCharacterMovementCustomMode
EPalCharacterMovementCustomMode = {
    None = 0,
    Fatigue = 1,
    Sprint = 2,
    Sliding = 3,
    Glider = 4,
    Climbing = 5,
    Riding = 6,
    Rolling = 7,
    Grappling = 8,
    EPalCharacterMovementCustomMode_MAX = 9,
}

---@enum EPalCharacterNaturalUpdateType
EPalCharacterNaturalUpdateType = {
    Player = 0,
    OtomoPal = 1,
    BaseCampPal = 2,
    EPalCharacterNaturalUpdateType_MAX = 3,
}

---@enum EPalCharacterStatusOperationName
EPalCharacterStatusOperationName = {
    Undefined = 0,
    Attack = 1,
    Defence = 2,
    HP = 3,
    WorkSpeed = 4,
    EPalCharacterStatusOperationName_MAX = 5,
}

---@enum EPalCharacterStatusOperationResult
EPalCharacterStatusOperationResult = {
    Success = 0,
    FailedNotValidIndividualHandle = 1,
    FailedNotValidIndividualParameter = 2,
    FailedNotValidPlayerState = 3,
    FailedNotValidPlayerRecordData = 4,
    FailedNotValidPlayerInventoryData = 5,
    FailedNotValidOtomoHolder = 6,
    FailedGetPlayerRankMasterData = 7,
    FailedGetCharacterUpgradeMasterData = 8,
    FailedNotFoundOtomo = 9,
    FailedAlreadyMaxRank = 10,
    FailedAlreadyResetStatus = 11,
    FailedCalcRequiredRelicNum = 12,
    FailedLackRelicNum = 13,
    FailedCalcRequiredUpgradeItemNum = 14,
    FailedLackUpgradeItemNum = 15,
    FailedLackMoneyNum = 16,
    FailedItemOperation = 17,
    EPalCharacterStatusOperationResult_MAX = 18,
}

---@enum EPalCharacterTeamMissionDifficulty
EPalCharacterTeamMissionDifficulty = {
    Easy = 0,
    Normal = 1,
    Hard = 2,
    EPalCharacterTeamMissionDifficulty_MAX = 3,
}

---@enum EPalChatCategory
EPalChatCategory = {
    None = 0,
    Global = 1,
    Guild = 2,
    Say = 3,
    EPalChatCategory_MAX = 4,
}

---@enum EPalCheckSpawnResultType
EPalCheckSpawnResultType = {
    Ignore = 0,
    Spawn = 1,
    Despawn = 2,
    EPalCheckSpawnResultType_MAX = 3,
}

---@enum EPalContainerOperationRestrictType
EPalContainerOperationRestrictType = {
    None = 0,
    CannotInject = 1,
    EPalContainerOperationRestrictType_MAX = 2,
}

---@enum EPalContainerUsageType
EPalContainerUsageType = {
    None = 0,
    ItemStorage = 1,
    EPalContainerUsageType_MAX = 2,
}

---@enum EPalCoopSkillSearchType
EPalCoopSkillSearchType = {
    Undefined = 0,
    MapObject = 1,
    Character = 2,
    DungeonPortal = 3,
    DungeonGoal = 4,
    EPalCoopSkillSearchType_MAX = 5,
}

---@enum EPalCurrentActionNotifyType
EPalCurrentActionNotifyType = {
    Attack = 0,
    Spawn = 1,
    Other = 2,
    EPalCurrentActionNotifyType_MAX = 3,
}

---@enum EPalCurveBall
EPalCurveBall = {
    None = 0,
    Straight001 = 1,
    Straight002 = 2,
    Straight003 = 3,
    Left001 = 4,
    Left002 = 5,
    Left003 = 6,
    LeftDown001 = 7,
    LeftDown002 = 8,
    LeftDown003 = 9,
    Right001 = 10,
    Right002 = 11,
    Right003 = 12,
    RightDown001 = 13,
    RightDown002 = 14,
    RightDown003 = 15,
    Down001 = 16,
    Down002 = 17,
    Down003 = 18,
    Homing = 19,
    EPalCurveBall_MAX = 20,
}

---@enum EPalDamageAnimationReactionType
EPalDamageAnimationReactionType = {
    None = 0,
    Small = 1,
    Big = 2,
    EPalDamageAnimationReactionType_MAX = 3,
}

---@enum EPalDamageTextSeq
EPalDamageTextSeq = {
    WaitStart = 0,
    Displaying = 1,
    WaitClose = 2,
    EPalDamageTextSeq_MAX = 3,
}

---@enum EPalDamageTextType
EPalDamageTextType = {
    DoubleRegist = 0,
    SingleRegist = 1,
    Normal = 2,
    SignelWeak = 3,
    DoubleWeak = 4,
    EPalDamageTextType_MAX = 5,
}

---@enum EPalDeadType
EPalDeadType = {
    Undefined = 0,
    Attack = 1,
    SelfDestruction = 2,
    BodyTemperature = 3,
    Falling = 4,
    Poison = 5,
    Burn = 6,
    Drown = 7,
    TowerBossBattle = 8,
    Ground = 9,
    EPalDeadType_MAX = 10,
}

---@enum EPalDescendantScrollDestination
EPalDescendantScrollDestination = {
    IntoView = 0,
    TopOrLeft = 1,
    Center = 2,
    EPalDescendantScrollDestination_MAX = 3,
}

---@enum EPalDialogType
EPalDialogType = {
    Alert = 0,
    YesNo = 1,
    OkCancel = 2,
    EPalDialogType_MAX = 3,
}

---@enum EPalDropItemType
EPalDropItemType = {
    None = 0,
    UNKO = 1,
    Max = 2,
}

---@enum EPalDungeonEnemySpawnerRankType
EPalDungeonEnemySpawnerRankType = {
    None = 0,
    Normal = 1,
    Boss = 2,
    EPalDungeonEnemySpawnerRankType_MAX = 3,
}

---@enum EPalDungeonInstanceBossState
EPalDungeonInstanceBossState = {
    Spawned = 0,
    Dead = 1,
    EPalDungeonInstanceBossState_MAX = 2,
}

---@enum EPalDungeonItemSpawnerType
EPalDungeonItemSpawnerType = {
    Normal = 0,
    Special = 1,
    EPalDungeonItemSpawnerType_MAX = 2,
}

---@enum EPalDungeonType
EPalDungeonType = {
    Normal = 0,
    Fixed = 1,
    EPalDungeonType_MAX = 2,
}

---@enum EPalElementType
EPalElementType = {
    None = 0,
    Normal = 1,
    Fire = 2,
    Water = 3,
    Leaf = 4,
    Electricity = 5,
    Ice = 6,
    Earth = 7,
    Dark = 8,
    Dragon = 9,
    MAX = 10,
}

---@enum EPalEnemySpawnActorType
EPalEnemySpawnActorType = {
    Rifle = 0,
    ShotGun = 1,
    Bat = 2,
    RPG = 3,
    EPalEnemySpawnActorType_MAX = 4,
}

---@enum EPalEnemySpawnDefaultAction
EPalEnemySpawnDefaultAction = {
    None = 0,
    StopStand = 1,
    Turn90 = 2,
    Turn180 = 3,
    PointPathWalk = 4,
    EPalEnemySpawnDefaultAction_MAX = 5,
}

---@enum EPalEnergyType
EPalEnergyType = {
    None = 0,
    Electric = 1,
    EPalEnergyType_MAX = 2,
}

---@enum EPalExpCalcType
EPalExpCalcType = {
    None = 0,
    Build = 1,
    Craft = 2,
    EPalExpCalcType_MAX = 3,
}

---@enum EPalFacialEyeType
EPalFacialEyeType = {
    None = 0,
    Default = 1,
    Close = 2,
    HalfClose = 3,
    Pain = 4,
    Smile = 5,
    Anger = 6,
    Trouble = 7,
    GuruGuru = 8,
    EPalFacialEyeType_MAX = 9,
}

---@enum EPalFacialMouthType
EPalFacialMouthType = {
    None = 0,
    Default = 1,
    Pain = 2,
    Smile = 3,
    Anger = 4,
    EPalFacialMouthType_MAX = 5,
}

---@enum EPalFadeWidgetLayerType
EPalFadeWidgetLayerType = {
    Invalid = 0,
    Common_Lowest = 1,
    Common_Mid = 2,
    Common_Highest = 3,
    Loading = 4,
    Loading_WorldPartition = 5,
    Loading_SucceedRequestEnterExitStageInClient = 6,
    EPalFadeWidgetLayerType_MAX = 7,
}

---@enum EPalFadeWidgetType
EPalFadeWidgetType = {
    Invalid = 0,
    SimpleColor = 1,
    Loading = 2,
    EPalFadeWidgetType_MAX = 3,
}

---@enum EPalFarmCropState
EPalFarmCropState = {
    None = 0,
    NoSelect = 1,
    Watered = 2,
    Growup = 3,
    Harvestable = 4,
    Seeding = 5,
    EPalFarmCropState_MAX = 6,
}

---@enum EPalFarmSkillFruitsLotteryItemType
EPalFarmSkillFruitsLotteryItemType = {
    None = 0,
    SkillFruits_Same = 1,
    SkillFruits_Same_ElementType_Rarity1 = 2,
    SkillFruits_Same_ElementType_Rarity2 = 3,
    SkillFruits_Same_ElementType_Rarity3 = 4,
    OtherItem = 5,
    Empty = 6,
    EPalFarmSkillFruitsLotteryItemType_MAX = 7,
}

---@enum EPalFarmSkillFruitsPickupResult
EPalFarmSkillFruitsPickupResult = {
    Success = 0,
    Failed = 1,
    Failed_InventoryFull = 2,
    EPalFarmSkillFruitsPickupResult_MAX = 3,
}

---@enum EPalFarmSkillFruitsState
EPalFarmSkillFruitsState = {
    None = 0,
    Planting = 1,
    Watered = 2,
    Growup = 3,
    Harvestable = 4,
    EPalFarmSkillFruitsState_MAX = 5,
}

---@enum EPalFlyHeightType
EPalFlyHeightType = {
    Stop = 0,
    ToFly = 1,
    ToLand = 2,
    EPalFlyHeightType_MAX = 3,
}

---@enum EPalFoliagePresetType
EPalFoliagePresetType = {
    None = 0,
    NormalTree_L = 1,
    LowTree = 2,
    NormalTree_L_CherryBlossom = 3,
    Mushroom_L = 4,
    Mushroom_S = 5,
    EPalFoliagePresetType_MAX = 6,
}

---@enum EPalFoodStatusEffectType
EPalFoodStatusEffectType = {
    None = 0,
    Attack = 1,
    Defense = 2,
    HungerResist = 3,
    SANResist = 4,
    WorkSpeed = 5,
    Regene_Hp = 6,
    EPalFoodStatusEffectType_MAX = 7,
}

---@enum EPalFootType
EPalFootType = {
    None = 0,
    ForeFootLeft = 1,
    ForeFootRight = 2,
    HindFootLeft = 3,
    HindFootRight = 4,
    MAX = 5,
}

---@enum EPalGameModeType
EPalGameModeType = {
    Title = 0,
    InGame = 1,
    EPalGameModeType_MAX = 2,
}

---@enum EPalGameSystemInitFailedReason
EPalGameSystemInitFailedReason = {
    None = 0,
    WatchLog = 1,
    EPalGameSystemInitFailedReason_MAX = 2,
}

---@enum EPalGameSystemInitProcessType
EPalGameSystemInitProcessType = {
    Init = 0,
    WaitForInitSystems = 1,
    ApplyWorldSaveData = 2,
    ApplyPlayerSaveData = 3,
    EPalGameSystemInitProcessType_MAX = 4,
}

---@enum EPalGameSystemInitState
EPalGameSystemInitState = {
    Init = 0,
    InProgress = 1,
    Complete = 2,
    Failed = 3,
    EPalGameSystemInitState_MAX = 4,
}

---@enum EPalGenderType
EPalGenderType = {
    None = 0,
    Male = 1,
    Female = 2,
    EPalGenderType_MAX = 3,
}

---@enum EPalGeneralAnimSequenceType
EPalGeneralAnimSequenceType = {
    None = 0,
    JumpStart = 1,
    JumpLoop = 2,
    JumpEnd = 3,
    EPalGeneralAnimSequenceType_MAX = 4,
}

---@enum EPalGeneralBlendSpaceType
EPalGeneralBlendSpaceType = {
    None = 0,
    GeneralMove = 1,
    RidingMove = 2,
    FlyingMove = 3,
    FlyingRidingMove = 4,
    TransportingObjectMove = 5,
    EPalGeneralBlendSpaceType_MAX = 6,
}

---@enum EPalGeneralMontageType
EPalGeneralMontageType = {
    None = 0,
    GeneralAttackReady_Near = 1,
    GeneralAttackReadyLoop_Near = 2,
    GeneralAttackProcess_Near = 3,
    GeneralAttackProcessLoop_Near = 4,
    GeneralAttackAfter_Near = 5,
    GeneralAttackReady_Far = 6,
    GeneralAttackReadyLoop_Far = 7,
    GeneralAttackProcess_Far = 8,
    GeneralAttackProcessLoop_Far = 9,
    GeneralAttackAfter_Far = 10,
    Rolling = 11,
    AirDash_Forward = 12,
    AirDash_Back = 13,
    AirDash_Right = 14,
    AirDash_Left = 15,
    Step_Forward = 16,
    Step_Back = 17,
    Step_Right = 18,
    Step_Left = 19,
    JumpPreliminary = 20,
    JumpStart = 21,
    SleepStart = 22,
    SleepLoop = 23,
    SleepEnd = 24,
    BeLiftupStart = 25,
    BeLiftupLoop = 26,
    DamageAdditive = 27,
    HumanPetting_Standby_S = 28,
    HumanPetting_Standby_L = 29,
    HumanPetting_DoStroke_S = 30,
    HumanPetting_DoStroke_SM = 31,
    HumanPetting_DoStroke_M = 32,
    HumanPetting_DoStroke_L = 33,
    Climbing_ClimbUpAtTop = 34,
    Grappling = 35,
    EatUpper = 36,
    Defense_Wait = 37,
    Ragdoll = 38,
    LargeDown_Start = 39,
    LargeDown_Loop = 40,
    LargeDown_End = 41,
    SummonStart = 42,
    SummonLoop = 43,
    SummonEnd = 44,
    DyingEnd = 45,
    EPalGeneralMontageType_MAX = 46,
}

---@enum EPalGenusCategoryType
EPalGenusCategoryType = {
    None = 0,
    Humanoid = 1,
    FourLegged = 2,
    Dragon = 3,
    Fish = 4,
    Bird = 5,
    Monster = 6,
    Other = 7,
    EPalGenusCategoryType_MAX = 8,
}

---@enum EPalGrapplingGunState
EPalGrapplingGunState = {
    Idle = 0,
    Shooting = 1,
    Pulling = 2,
    Grappling = 3,
    EPalGrapplingGunState_MAX = 4,
}

---@enum EPalGroupOperationResult
EPalGroupOperationResult = {
    Success = 0,
    FailedNotFoundNetworkTransmitter = 1,
    FailedCreateNewGroup = 2,
    FailedNotFoundGroup = 3,
    FailedNotFoundGuild = 4,
    FailedNotFoundOrganization = 5,
    FailedNotFoundCharacterHandle = 6,
    FailedNotFoundCharacterIndividualID = 7,
    FailedNotFoundCharacterParameter = 8,
    FailedNotFoundPlayerCharacterHandle = 9,
    FailedAlreadyBelongToGroup = 10,
    FailedNotImplementExitNoPlayerCharacter = 11,
    FailedAlreadyExist = 12,
    FailedPlayerAlreadyBelongingToGuild = 13,
    FailedBaseCampAlreadyBelongingToGuild = 14,
    FailedPlayerNotBelongingToGuild = 15,
    FailedGuildMaxPlayerNum = 16,
    FailedBelongingToIndependentGuildOtherPlayer = 17,
    FailedPermissionDeniedByNotAdmin = 18,
    FailedAdminCannotExitGuild = 19,
    FailedDisposeStaticOrganization = 20,
    FailedNotEnoughSpaceStoreBackBaseCampWorkers = 21,
    FailedGuildItemStorageNotEmpty = 22,
    FailedOverBaseCamp = 23,
    FailedBaseCampNotBelongingToGuild = 24,
    FailedNotFoundBaseCamp = 25,
    FailedBaseCampOperation = 26,
    FailedNotImplement = 27,
    EPalGroupOperationResult_MAX = 28,
}

---@enum EPalGroupType
EPalGroupType = {
    Undefined = 0,
    Neutral = 1,
    Organization = 2,
    IndependentGuild = 3,
    Guild = 4,
    ResidentEnemy = 5,
    EPalGroupType_MAX = 6,
}

---@enum EPalGuildEnterRequestFlowResult
EPalGuildEnterRequestFlowResult = {
    Undefined = 0,
    ConfirmEnterGuildToApplicant_No = 1,
    ConfirmEnterGuildToApplicant_LoseBaseCamp_No = 2,
    OfferEnterGuildToRespondent_No = 3,
    Success = 4,
    EPalGuildEnterRequestFlowResult_MAX = 5,
}

---@enum EPalGuildJoinRequestConfirm
EPalGuildJoinRequestConfirm = {
    None = 0,
    JoinLowBaseCampLevelGuild = 1,
    LoseLastBaseCamp = 2,
    EPalGuildJoinRequestConfirm_MAX = 3,
}

---@enum EPalGuildJoinRequestResult
EPalGuildJoinRequestResult = {
    Failed_NotValidGroupManager = 0,
    Failed_Terminated = 1,
    Failed_NotValidApplicantPlayerCharacter = 2,
    Failed_NotValidApplicantPlayerState = 3,
    Failed_NotValidApplicantPlayerGuild = 4,
    Failed_NotValidRespondentPlayerCharacter = 5,
    Failed_NotValidRespondentPlayerController = 6,
    Failed_NotFoundApplicantPlayerGuild = 7,
    Failed_NotExistsApplicantPlayerInTargetGuild = 8,
    Failed_NotExistsTargetPlayerInTargetGuild = 9,
    Failed_CannotExitGuildByAlonePlayer = 10,
    Failed_CannotExitGuildAdminPlayer = 11,
    Failed_NotAdminApplicantPlayer = 12,
    Failed_CannotJoinOtherGuildApplicant = 13,
    Failed_RequestAlreadyInProgressOtherProcess = 14,
    Failed_TooFarPlayers = 15,
    Failed_TooManyRequest = 16,
    Failed_RefuseByRespondent = 17,
    Failed_CancelByApplicant = 18,
    Failed_OverBaseCampNum_Applicant = 19,
    Failed_OverBaseCampNum_Respondent = 20,
    Failed_NotEnoughSpaceStoreBackBaseCampWorkers_Applicant = 21,
    Failed_NotEnoughSpaceStoreBackBaseCampWorkers_Respondent = 22,
    Failed_NotEmptyGuildItemStorage_Applicant = 23,
    Failed_NotEmptyGuildItemStorage_Respondent = 24,
    Separator_Success_Failed = 25,
    Succcess_MergePalBox_Applicant = 26,
    Succcess_MergePalBox_Respondent = 27,
    Succcess_NoMerge_Applicant = 28,
    Succcess_NoMerge_Respondent = 29,
    EPalGuildJoinRequestResult_MAX = 30,
}

---@enum EPalGuildPlayerStatus
EPalGuildPlayerStatus = {
    Logout = 0,
    Online = 1,
    EPalGuildPlayerStatus_MAX = 2,
}

---@enum EPalGuildRequestResult
EPalGuildRequestResult = {
    FailedNotValidGroupManager = 0,
    FailedNotValidApplicantPlayerCharacter = 1,
    FailedNotValidRespondentPlayerCharacter = 2,
    FailedNotValidRespondentPlayerController = 3,
    FailedCannotJoinOtherGuildApplicant = 4,
    FailedRequestAlreadyInProgressOtherProcess = 5,
    Failed_RefuseByRespondent = 6,
    Failed_CancelByApplicant = 7,
    Failed_OverBaseCampNum_Applicant = 8,
    Failed_OverBaseCampNum_Respondent = 9,
    Failed_NotEnoughSpaceStoreBackBaseCampWorkers_Applicant = 10,
    Failed_NotEnoughSpaceStoreBackBaseCampWorkers_Respondent = 11,
    Succcess_MergePalBox_Applicant = 12,
    Succcess_MergePalBox_Respondent = 13,
    Succcess_NoMerge_Applicant = 14,
    Succcess_NoMerge_Respondent = 15,
    Success = 16,
    EPalGuildRequestResult_MAX = 17,
}

---@enum EPalHUDDisplayType
EPalHUDDisplayType = {
    Undefined = 0,
    DamegeReact = 1,
    InteractOn = 2,
    InteractOff = 3,
    EPalHUDDisplayType_MAX = 4,
}

---@enum EPalHUDWidgetPriority
EPalHUDWidgetPriority = {
    Default = 0,
    EnemyMark = 1,
    DamagePopUp = 2,
    PlayerInputGuard = 3,
    PlayerUI = 4,
    CaptureingLoupe = 5,
    CaptureReticle = 6,
    InteractIndicator = 7,
    BuildingUI = 8,
    RadialMenu = 9,
    GameOverUI = 10,
    DebugInfo = 11,
    EPalHUDWidgetPriority_MAX = 12,
}

---@enum EPalIVisitorNPCAction
EPalIVisitorNPCAction = {
    None = 0,
    ReturnToSpawnedPoint = 1,
    Raid = 2,
    EPalIVisitorNPCAction_MAX = 3,
}

---@enum EPalInLoadCollectionType
EPalInLoadCollectionType = {
    None = 0,
    InstanceID = 1,
    ContainerID = 2,
    DynamicItemID = 3,
    MAX = 4,
}

---@enum EPalIncidentState
EPalIncidentState = {
    None = 0,
    Initialized = 1,
    Executing = 2,
    Completed = 3,
    Canceled = 4,
    InstanceCreateFailed = 255,
    EPalIncidentState_MAX = 256,
}

---@enum EPalIncidentTalkType
EPalIncidentTalkType = {
    None = 0,
    OneTalk = 1,
    MultiTalk = 2,
    CharacterTalk = 3,
    EPalIncidentTalkType_MAX = 4,
}

---@enum EPalInteractiveObjectActionType
EPalInteractiveObjectActionType = {
    None = 0,
    Interact1 = 1,
    Interact2 = 2,
    Interact3 = 3,
    Interact4 = 4,
    EPalInteractiveObjectActionType_MAX = 5,
}

---@enum EPalInteractiveObjectButtonType
EPalInteractiveObjectButtonType = {
    OnePush = 0,
    LongPush_WithGauge = 1,
    LongPush_WithoutGauge = 2,
    LongPush_Infinity = 3,
    EPalInteractiveObjectButtonType_MAX = 4,
}

---@enum EPalInteractiveObjectIndicatorType
EPalInteractiveObjectIndicatorType = {
    None = 0,
    Build = 1,
    BuildCancel = 2,
    Work = 3,
    Open = 4,
    OpenByPartnerSkill = 5,
    Picking = 6,
    OpenCraftMenu = 7,
    OpenConverterMenu = 8,
    OpenBaseCampMenu = 9,
    OpenBaseCampTaskMenu = 10,
    OpenPalBoxMenu = 11,
    OpenPalRankUp = 12,
    Collect = 13,
    Pickup = 14,
    SelectCrop = 15,
    Seeding = 16,
    Watering = 17,
    Harvest = 18,
    OpenPalMedicalBedMenu = 19,
    SleepPlayerBed = 20,
    GetupPlayerBed = 21,
    OpenDetailMenu = 22,
    SelectRecipe = 23,
    PickupProduct = 24,
    Mining = 25,
    UnlockFastTravel = 26,
    FastTravel = 27,
    UnuseFastTravel = 28,
    Obtain = 29,
    SetEgg = 30,
    StoreAll = 31,
    ObtainAll = 32,
    RecoveryAllOtomo = 33,
    Liftup = 34,
    MoveToWorker = 35,
    MoveToPalBox = 36,
    OpenWorkerMenu = 37,
    CoopAction = 38,
    Talk = 39,
    EnterDungeon = 40,
    ExitDungeon = 41,
    EntryBossBattle = 42,
    EntryBossBattleHard = 43,
    EntryBossBattleFullMember = 44,
    StartBossBattle = 45,
    EnterArena = 46,
    ArenaMatching = 47,
    ArenaFullMember = 48,
    StartArena = 49,
    ArenaRule = 50,
    ArenaMultiOnly = 51,
    Resuscitation = 52,
    Repair = 53,
    StatusOperator_Player = 54,
    StatusOperator_Pal = 55,
    Ignition = 56,
    OpenDoor = 57,
    CloseDoor = 58,
    OpenMenu_SecuritySetting = 59,
    InputPassword = 60,
    InputPassword_CannotTry = 61,
    SelectRepairTarget = 62,
    CancelWork = 63,
    WaitForReplication = 64,
    RequestJoinGuild = 65,
    Signboard = 66,
    OpenCaptureCage = 67,
    ChangeBaseCampBattleType_AttackToEnemyInBaseCamp = 68,
    ChangeBaseCampBattleType_NoBattle = 69,
    SummonRaidBoss = 70,
    SummonRaidBoss_RequireMaterial = 71,
    CharacterMake = 72,
    OpenWorkHardMenu = 73,
    OpenWorkSuitabilityPreferenceMenu = 74,
    OpenFixedAssignManageMenu = 75,
    OpenChestItemPreferenceMenu = 76,
    OpenSkinChangeMenu = 77,
    Uninteractable = 78,
    DisableGuildJoin = 79,
    DestroyOilrigCannon = 80,
    Hacking = 81,
    Sit = 82,
    BoothTrade = 83,
    BoothSale = 84,
    BoothCollect = 85,
    BoothNoRevenue = 86,
    OpenOperatingTableMenu = 87,
    SetSkillFruits = 88,
    Climb = 89,
    Test_Warp = 90,
    DevTest_1 = 91,
    DevTest_2 = 92,
    DevTest_3 = 93,
    DevTest_4 = 94,
    EPalInteractiveObjectIndicatorType_MAX = 95,
}

---@enum EPalInvaderType
EPalInvaderType = {
    None = 0,
    InvaderEnemy = 1,
    VisitorNPC = 2,
    EPalInvaderType_MAX = 3,
}

---@enum EPalItemOperationResult
EPalItemOperationResult = {
    Success = 0,
    SuccessNoOperation = 1,
    FailedTerminatedManager = 2,
    FailedNotExistsInventoryData = 3,
    FailedContainerOverflowSlotNum = 4,
    FailedContainerItemInfoOverSlotNum = 5,
    FailedContainerOverflowItemsInSlot = 6,
    FailedContainerNotFoundContainer = 7,
    FailedContainerNotFoundSlot = 8,
    FailedContainerIsLocalOnly = 9,
    FailedContainerNotEqualsId = 10,
    FailedCreateDynamicItemData = 11,
    FailedNoDynamicItemIds = 12,
    FailedNotFoundContainer = 13,
    FailedNotFoundSlot = 14,
    FailedNotFoundStaticItemData = 15,
    FailedNotEnoughSlotSpace = 16,
    FailedSameSlotUseProduceAndConsume = 17,
    FailedNotEnoughConsumes = 18,
    FailedInValidItemInSlot = 19,
    FailedNotEnoughNumInSlot = 20,
    FailedNotEqualRequiredItemInSlot = 21,
    FailedGetLocalSlotInServer = 22,
    FailedEmptyConsumeItemInfo = 23,
    FailedSlotCountIsZero = 24,
    FailedCannotAggregateSlotItem = 25,
    FailedInvalidPermission = 26,
    FailedNotAllowedByFilter = 27,
    FailedNotControllable = 28,
    FailedRestrictedOperation = 29,
    FailedRecievedItemNotEqual = 30,
    FailedTransactionLockedOperation = 31,
    FailedNotFoundRowNameOrHash = 32,
    FailedUnknown = 33,
    FailedUnknownLogOutput = 34,
    EPalItemOperationResult_MAX = 35,
}

---@enum EPalItemOperationType
EPalItemOperationType = {
    Undefined = 0,
    Product = 1,
    Move = 2,
    Dispose = 3,
    EPalItemOperationType_MAX = 4,
}

---@enum EPalItemRequireCategory
EPalItemRequireCategory = {
    Food_A = 0,
    Food_B = 1,
    Food_C = 2,
    Food_D = 3,
    Food_E = 4,
    Food_F = 5,
    Equip_A = 6,
    Equip_B = 7,
    Equip_C = 8,
    Equip_D = 9,
    Equip_E = 10,
    Equip_F = 11,
    EPalItemRequireCategory_MAX = 12,
}

---@enum EPalItemShopProductType
EPalItemShopProductType = {
    Invalid = 0,
    Normal = 1,
    OnlyPurchaseOne = 2,
    Skin = 3,
    EPalItemShopProductType_MAX = 4,
}

---@enum EPalItemSlotPressType
EPalItemSlotPressType = {
    Normal = 0,
    LiftHalf = 1,
    LiftOne = 2,
    EPalItemSlotPressType_MAX = 3,
}

---@enum EPalItemTypeA
EPalItemTypeA = {
    None = 0,
    Weapon = 1,
    SpecialWeapon = 2,
    Armor = 3,
    Accessory = 4,
    Material = 5,
    Consume = 6,
    Ammo = 7,
    Food = 8,
    Essential = 9,
    Glider = 10,
    MonsterEquipWeapon = 11,
    Blueprint = 12,
    CaptureItemModifier = 13,
    EPalItemTypeA_MAX = 14,
}

---@enum EPalItemTypeB
EPalItemTypeB = {
    None = 0,
    WeaponMelee = 1,
    WeaponBow = 2,
    WeaponCrossbow = 3,
    WeaponHandgun = 4,
    WeaponAssaultRifle = 5,
    WeaponSniperRifle = 6,
    WeaponRocketLauncher = 7,
    WeaponShotgun = 8,
    WeaponFlameThrower = 9,
    WeaponGatlingGun = 10,
    WeaponCollectionTool = 11,
    WeaponThrowObject = 12,
    WeaponGrapplingGun = 13,
    WeaponMetalDetector = 14,
    SPWeaponCaptureBall = 15,
    SPWeaponDamageTrap = 16,
    SPWeaponCaptureTrap = 17,
    SPWeaponCaptureRope = 18,
    ArmorHead = 19,
    ArmorBody = 20,
    Accessory = 21,
    MaterialOre = 22,
    MaterialJewelry = 23,
    MaterialIngot = 24,
    MaterialWood = 25,
    MaterialStone = 26,
    MaterialProccessing = 27,
    MaterialMonster = 28,
    MaterialPalEgg = 29,
    ConsumeBandage = 30,
    ConsumeSeed = 31,
    ConsumeBullet = 32,
    ConsumeWazaMachine = 33,
    ConsumeTechnologyBook = 34,
    ConsumeAncientTechnologyBook = 35,
    ConsumeOther = 36,
    ConsumeGainStatusPoints = 37,
    ConsumePalLevelUp = 38,
    ConsumePalGainExp = 39,
    ConsumePalTalentUp = 40,
    ConsumePalRankUp = 41,
    ConsumePalRevive = 42,
    ConsumePassiveSkillChange = 43,
    ConsumePalWorkSuitabilityUp = 44,
    FoodMeat = 45,
    FoodVegetable = 46,
    FoodFish = 47,
    FoodDishMeat = 48,
    FoodDishVegetable = 49,
    FoodDishFish = 50,
    FoodProcessed = 51,
    Essential = 52,
    Essential_UnlockPlayerFuture = 53,
    Essential_BossReward = 54,
    Glider = 55,
    Shield = 56,
    Money = 57,
    Medicine = 58,
    Drug = 59,
    MonsterEquipWeapon = 60,
    Blueprint = 61,
    ReturnToBaseCamp = 62,
    Essential_PalGear = 63,
    Essential_AdditionalInventory = 64,
    CaptureItemModifier = 65,
    EPalItemTypeB_MAX = 66,
}

---@enum EPalItemUseEffectType
EPalItemUseEffectType = {
    Invalid = 0,
    CommonEffect_ToIndividualParameter = 1,
    GrantTechnologyPoint = 2,
    Homeward = 3,
    PalPassiveSkillChange = 4,
    EPalItemUseEffectType_MAX = 5,
}

---@enum EPalKeyConfigAxisFilterType
EPalKeyConfigAxisFilterType = {
    All = 0,
    Plus = 1,
    Minus = 2,
    EPalKeyConfigAxisFilterType_MAX = 3,
}

---@enum EPalKeyConfigCategory
EPalKeyConfigCategory = {
    MouseAndKeyboard = 0,
    GamePad = 1,
    EPalKeyConfigCategory_MAX = 2,
}

---@enum EPalKillLogDisplayType
EPalKillLogDisplayType = {
    Down = 0,
    Death = 1,
    HardcoreDeath_Pal = 2,
    HardcoreDeath_Player = 3,
    EPalKillLogDisplayType_MAX = 4,
}

---@enum EPalLabCategorySubType
EPalLabCategorySubType = {
    None = 0,
    CraftSpeed_EmitFlame = 1,
    CraftSpeed_Watering = 2,
    CraftSpeed_Seeding = 3,
    CraftSpeed_GenerateElectricity = 4,
    CraftSpeed_Handcraft = 5,
    CraftSpeed_Deforest = 6,
    CraftSpeed_Mining = 7,
    CraftSpeed_ProductMedicine = 8,
    CraftSpeed_Cool = 9,
    AttackRateBaseCampWorker = 10,
    DefenseRateBaseCampWorker = 11,
    ProductExtraItemProbability = 12,
    ProductExtraItemProbability_Bullet = 13,
    ProductExtraItemProbability_Sphere = 14,
    ProductExtraItemProbability_Ingot = 15,
    ProductExtraItemProbability_Food = 16,
    ProductExtraItemProbability_Ore = 17,
    ProductItemConsumeMaterialNumRate = 18,
    LabResearchSpeed = 19,
    PalEggHatchingSpeed = 20,
    EnergyStorageRate = 21,
    ConsumeEnergyRate = 22,
    ExpeditionRewardRate = 23,
    ExpeditionTimeCostRate = 24,
    FarmCropGrowupSpeed = 25,
    FarmCropHarvestNumRate = 26,
    ItemCorruptionSpeedRate = 27,
    OilExtractionSpeedRate = 28,
    TechnologyUnlock = 29,
    EPalLabCategorySubType_MAX = 30,
}

---@enum EPalLabResearchOperationResult
EPalLabResearchOperationResult = {
    FailedNotValidResearchId = 0,
    FailedAlreadyResearching = 1,
    FailedCannotConsumeMaterials = 2,
    FailedNotCompletedRequiredResearch = 3,
    FailedNotSameCancelResearchId = 4,
    FailedNotValidRequestPlayerState = 5,
    FailedNotSameGuildRequestPlayer = 6,
    Success = 7,
    EPalLabResearchOperationResult_MAX = 8,
}

---@enum EPalLandingType
EPalLandingType = {
    None = 0,
    FootStep = 1,
    FootStep_S = 2,
    JumpLanding = 3,
    RollStep_Fwd = 4,
    RollStep_L = 5,
    RollStep_R = 6,
    RollStep_Bwd = 7,
    FootStep_Index_Begin = 1,
    FootStep_Index_End = 2,
    JumpLanding_Index_Begin = 3,
    JumpLanding_Index_End = 3,
    RollStep_Index_Begin = 4,
    RollStep_Index_End = 7,
    EPalLandingType_MAX = 8,
}

---@enum EPalLanguageType
EPalLanguageType = {
    JP = 0,
    EN = 1,
    ZH_HANS = 2,
    ZH_HANT = 3,
    FR = 4,
    IT = 5,
    DE = 6,
    ES = 7,
    KO = 8,
    PT_BR = 9,
    RU = 10,
    EPalLanguageType_MAX = 11,
}

---@enum EPalLiftupRequestResult
EPalLiftupRequestResult = {
    Success = 0,
    FailedNotExistsTargetCharacter = 1,
    FailedNotExistsLiftupComponent = 2,
    FailedInvalidPlayerIdInController = 3,
    FailedInvalidDefaultCharacterInController = 4,
    FailedDisabledLiftup = 5,
    FailedInvalidRequestPlayerId = 6,
    FailedAlreadyLiftingActor = 7,
    FailedCharacterParameter = 8,
    FailedIndividualCharacterParameter = 9,
    FailedAlreadyLocked = 10,
    FailedSleeping = 11,
    EPalLiftupRequestResult_MAX = 12,
}

---@enum EPalLimitVolumeFlag
EPalLimitVolumeFlag = {
    Build = 1,
    EnemySpawn = 2,
    MapObjectSpawn = 4,
    BaseCampArea = 8,
    EPalLimitVolumeFlag_MAX = 9,
}

---@enum EPalLocalizeTextCategory
EPalLocalizeTextCategory = {
    None = 0,
    UICommon = 1,
    NpcTalk = 2,
    BaseCampWorkerEvent = 3,
    PalMonsterName = 4,
    PalHumanName = 5,
    UniqueNPCName = 6,
    PrefixName = 7,
    PalShortDescription = 8,
    PalLongDescription = 9,
    PalFirstActivatedInfo = 10,
    ItemName = 11,
    ItemDescription = 12,
    MapObjectName = 13,
    BuildObjectDescription = 14,
    BuildObjectCategory = 15,
    SkillName = 16,
    SkillDesc = 17,
    TechnologyName = 18,
    TechnologyDescription = 19,
    WorldMapRegionAndPlace = 20,
    DungeonName = 21,
    NoteDescription = 22,
    TutorialMessage = 23,
    HelpGuide = 24,
    MapRespawnPoint = 25,
    CharacterTeamMission = 26,
    LabResearch = 27,
    EPalLocalizeTextCategory_MAX = 28,
}

---@enum EPalLocationType
EPalLocationType = {
    Undefined = 0,
    Point = 1,
    PointStatic = 2,
    PointFastTravel = 3,
    PointBaseCamp = 4,
    PointPlayer = 5,
    PointMapObject = 6,
    PointCharacter = 7,
    PointDungeonPortal = 8,
    PointStaticRespawn = 9,
    PointBossTower = 10,
    DroppedCharacter = 11,
    DroppedChest = 12,
    Area = 13,
    CustomMarker = 14,
    FieldBoss = 15,
    HumanBoss = 16,
    Oilrig = 17,
    SupplyMarker = 18,
    PointDungeonGoal = 19,
    EPalLocationType_MAX = 20,
}

---@enum EPalLogContentToneType
EPalLogContentToneType = {
    Normal = 0,
    Negative = 1,
    Positive = 2,
    EPalLogContentToneType_MAX = 3,
}

---@enum EPalLogFormatType
EPalLogFormatType = {
    Text = 0,
    Json = 1,
    EPalLogFormatType_MAX = 2,
}

---@enum EPalLogPriority
EPalLogPriority = {
    None = 0,
    Normal = 1,
    Important = 2,
    VeryImportant = 3,
    EPalLogPriority_MAX = 4,
}

---@enum EPalLogType
EPalLogType = {
    None = 0,
    CaptureSuccess = 1,
    CaptureFailed_LowBallLevel = 2,
    CaptureFailed_HighHP = 3,
    CaptureFailed_BounceBall = 4,
    CaptureFailed_OutOfBall = 5,
    CaptureFailed_TowerBoss = 6,
    CaptureFailed_PlayerPal = 7,
    StartInvaderMarch = 8,
    EndInvaderMarch_Win = 9,
    EndInvaderMarch_Timeout = 10,
    DropPal = 11,
    OtomoLowHealth_Phase1 = 12,
    OtomoLowHealth_Phase2 = 13,
    OtomoLowHealth_Phase3 = 14,
    OtomoEatFood = 15,
    OtomoPalDown = 16,
    OtomoPalDeath = 17,
    OtomoPalEffectiveAttack = 18,
    OtomoPalDefeatEnemy = 19,
    GetItem = 20,
    ShippingItem = 21,
    FullInventoryNotice = 22,
    StartWorldDataAutoSave = 23,
    SuccessedWorldDataAutoSave = 24,
    FailedWorldDataAutoSave = 25,
    StartPlayerDataAutoSave = 26,
    SuccessedPlayerDataAutoSave = 27,
    FailedPlayerDataAutoSave = 28,
    WorkerPalSanityLowWarning = 29,
    WorkerPalComplateItemConvert = 30,
    WorkerPalComplateBuild = 31,
    WorkerPalStartBuild = 32,
    WorkerPalStartRepair = 33,
    WorkerPalStartWork = 34,
    WorkerPalStartWork_CollectResource = 35,
    WorkerPalStartWork_ProductResource_Deforest = 36,
    WorkerPalStartWork_ProductResource_Mining = 37,
    WorkerPalMove_FailedApproachToFacilityAndTeleport = 38,
    WorkerPalMove_FailedApproachToFacilityAndRespawnFromPalBox = 39,
    WorkerPalMove_FailedApproachToFacilityAndStartWork = 40,
    WorkerPalMove_FailedApproachToFacilityAndUnassignAndIgnoreWorkers = 41,
    WorkerPalMove_FailedApproachToFacilityAndUnassignFixedAndIgnoreWorkers = 42,
    WorkerEvent_DestroyBuilding = 43,
    WorkerEvent_DodgeWork = 44,
    WorkerEvent_DodgeWork_Short = 45,
    WorkerEvent_DodgeWork_Sleep = 46,
    WorkerEvent_EatTooMuch = 47,
    WorkerEvent_Escape = 48,
    WorkerEvent_FightWithFriend = 49,
    WorkerEvent_OverworkDeath = 50,
    WorkerEvent_Sick = 51,
    WorkerEvent_Trantrum = 52,
    WorkerEvent_TurnFoodBox = 53,
    BaseCampTask_Progress_BuildObject = 54,
    BaseCampTask_Complete = 55,
    VisitorSpawn = 56,
    VisitorArrived = 57,
    VisitorReturn = 58,
    OverWeightInventory = 59,
    SkillTargetNotFound = 60,
    SkillNotAvailable = 61,
    SkillExecute = 62,
    SkillExecuteInBaseCamp = 63,
    SkillExecuteHealing = 64,
    SurvivorExp = 65,
    PartnerSkillExecute_Berserk = 66,
    PartnerSkillExecute_NightRunner = 67,
    PartnerSkillExecute_StatusUp = 68,
    PartnerSkillExecute_SearchDungeonGoal_Failed = 69,
    ObtainNote = 70,
    OutdoorBedNortice = 71,
    CannotSkipNightOnDay = 72,
    FullPalBox = 73,
    FireBaseCamp = 74,
    SupplyDropStart = 75,
    CompleteGuildLabResearch = 76,
    EPalLogType_MAX = 77,
}

---@enum EPalLogWidgetOverrideClassType
EPalLogWidgetOverrideClassType = {
    Invalid = 0,
    StartExpedition = 1,
    EPalLogWidgetOverrideClassType_MAX = 2,
}

---@enum EPalLogWidgetState
EPalLogWidgetState = {
    In = 0,
    Wait = 1,
    Out = 2,
    End = 3,
    EPalLogWidgetState_MAX = 4,
}

---@enum EPalMapBaseCampWorkerOrderType
EPalMapBaseCampWorkerOrderType = {
    Work = 0,
    BattleFighter = 1,
    BattleAllWorker = 2,
    EPalMapBaseCampWorkerOrderType_MAX = 3,
}

---@enum EPalMapObjectChangeMeshFXType
EPalMapObjectChangeMeshFXType = {
    None = 0,
    RockDestroyProgress = 1,
    EPalMapObjectChangeMeshFXType_MAX = 2,
}

---@enum EPalMapObjectCharacterTeamMissionIconTextureType
EPalMapObjectCharacterTeamMissionIconTextureType = {
    None = 0,
    Grass = 1,
    Forest = 2,
    Volcano = 3,
    Desert = 4,
    Snow = 5,
    Sakurajima = 6,
    DarkIsland = 7,
    EPalMapObjectCharacterTeamMissionIconTextureType_MAX = 8,
}

---@enum EPalMapObjectCharacterTeamMissionState
EPalMapObjectCharacterTeamMissionState = {
    None = 0,
    Ready = 1,
    InProgress = 2,
    Reward = 3,
    EPalMapObjectCharacterTeamMissionState_MAX = 4,
}

---@enum EPalMapObjectConcreteModelAccessResult
EPalMapObjectConcreteModelAccessResult = {
    Success = 0,
    FailedMissing = 1,
    FailedInBuilding = 2,
    EPalMapObjectConcreteModelAccessResult_MAX = 3,
}

---@enum EPalMapObjectConcreteModelModuleType
EPalMapObjectConcreteModelModuleType = {
    None = 0,
    ItemContainer = 1,
    CharacterContainer = 2,
    Workee = 3,
    Energy = 4,
    StatusObserver = 5,
    ItemStack = 6,
    Switch = 7,
    PlayerRecord = 8,
    BaseCampPassiveEffect = 9,
    PasswordLock = 10,
    RequireElementalAction = 11,
    Picking = 12,
    EPalMapObjectConcreteModelModuleType_MAX = 13,
}

---@enum EPalMapObjectConcreteModelThrowableType
EPalMapObjectConcreteModelThrowableType = {
    None = 0,
    Rest = 1,
    EPalMapObjectConcreteModelThrowableType_MAX = 2,
}

---@enum EPalMapObjectConvertItemModelRequestResult
EPalMapObjectConvertItemModelRequestResult = {
    Success = 0,
    FailedInvalidRecipeId = 1,
    EPalMapObjectConvertItemModelRequestResult_MAX = 2,
}

---@enum EPalMapObjectDamagableType
EPalMapObjectDamagableType = {
    AllRecieve = 0,
    OtherGroup = 1,
    NoDamage = 2,
    EPalMapObjectDamagableType_MAX = 3,
}

---@enum EPalMapObjectDefenseType
EPalMapObjectDefenseType = {
    Wait = 0,
    StationaryLauncher = 1,
    EPalMapObjectDefenseType_MAX = 2,
}

---@enum EPalMapObjectDestroyFXType
EPalMapObjectDestroyFXType = {
    None = 0,
    Normal = 1,
    NormalWood = 2,
    NormalRock = 3,
    NormalMetal = 4,
    FoliageTree = 5,
    Pickup = 6,
    Pickup_Wood = 7,
    Pickup_Stone = 8,
    Pickup_Berry = 9,
    LowTree = 10,
    Rock = 11,
    FoliageTree_CherryBlossom = 12,
    Mushroom = 13,
    Glass = 14,
    EPalMapObjectDestroyFXType_MAX = 15,
}

---@enum EPalMapObjectDisposeOptionType
EPalMapObjectDisposeOptionType = {
    NoDropItems = 0,
    NotAutoPickup = 1,
    OpenTreasureBox = 2,
    Immediately = 3,
    NotNotifyOwnerSpawnerLevelObject = 4,
    ByUnloadStage = 5,
    DropBuildMaterials = 6,
    RequireRespawnImmediately = 7,
    Replace = 8,
    EPalMapObjectDisposeOptionType_MAX = 9,
}

---@enum EPalMapObjectEnergyModuleStatusType
EPalMapObjectEnergyModuleStatusType = {
    Providable = 0,
    Waiting = 1,
    EPalMapObjectEnergyModuleStatusType_MAX = 2,
}

---@enum EPalMapObjectGetModelOutPinType
EPalMapObjectGetModelOutPinType = {
    Success = 0,
    Failed = 1,
    EPalMapObjectGetModelOutPinType_MAX = 2,
}

---@enum EPalMapObjectInteractRestrictType
EPalMapObjectInteractRestrictType = {
    SameGuildOnly = 0,
    Anyone = 1,
    EPalMapObjectInteractRestrictType_MAX = 2,
}

---@enum EPalMapObjectItemCollectableType
EPalMapObjectItemCollectableType = {
    Pickup = 0,
    Work = 1,
    EPalMapObjectItemCollectableType_MAX = 2,
}

---@enum EPalMapObjectItemContainerSlotAttribute
EPalMapObjectItemContainerSlotAttribute = {
    Undefined = 0,
    Input = 1,
    PublicOutput = 2,
    FoodProvidable = 3,
    CannotTransport = 4,
    MedicineProvidable = 5,
    EPalMapObjectItemContainerSlotAttribute_MAX = 6,
}

---@enum EPalMapObjectMaterialSubType
EPalMapObjectMaterialSubType = {
    None = 0,
    Wood = 1,
    Stone = 2,
    Copper = 3,
    Iron = 4,
    Platinum = 5,
    EPalMapObjectMaterialSubType_MAX = 6,
}

---@enum EPalMapObjectMaterialType
EPalMapObjectMaterialType = {
    None = 0,
    Wood = 1,
    Stone = 2,
    EPalMapObjectMaterialType_MAX = 3,
}

---@enum EPalMapObjectModelConnectIndex
EPalMapObjectModelConnectIndex = {
    Up = 0,
    Down = 1,
    Left = 2,
    Right = 3,
    Back = 4,
    Front = 5,
    FrontLeft = 6,
    FrontRight = 7,
    BackLeft = 8,
    BackRight = 9,
    AnyPlace = 254,
    None = 255,
    EPalMapObjectModelConnectIndex_MAX = 256,
}

---@enum EPalMapObjectModelInitializeExtraParameterType
EPalMapObjectModelInitializeExtraParameterType = {
    Undefined = 0,
    Build = 1,
    SpawnedBy = 2,
    Spawner = 3,
    Item = 4,
    TreasureBox = 5,
    DropItem = 6,
    ItemDropObject = 7,
    Location = 8,
    InitialItem = 9,
    InitialCharacter = 10,
    PalEgg = 11,
    Note = 12,
    Interact = 13,
    ItemContainerAttribute = 14,
    ByPlayerUId = 15,
    DropCharacter = 16,
    Replace = 17,
    InstanceId = 18,
    EPalMapObjectModelInitializeExtraParameterType_MAX = 19,
}

---@enum EPalMapObjectOperationResult
EPalMapObjectOperationResult = {
    None = 0,
    Canceled = 1,
    FailedInLimitVolume = 2,
    FailedInDungeon = 3,
    FailedOverflowBaseCampNumInGuild = 4,
    FailedOverflowBaseCampNumInWorld = 5,
    FailedTooNearOtherBaseCampArea = 6,
    FailedOtherGuildBaseCampArea = 7,
    FailedExceedMaxZ = 8,
    FailedUnderOceanPlane = 9,
    FailedCannotInstallNotInDoor = 10,
    FailedCannotInstallNotOnBase = 11,
    FailedNotExistsReplaceTarget = 12,
    FailNotFoundBaseCampWorkerDirectorBelongTo = 13,
    FailedNotEnoughMaterials = 14,
    FailedInValidWeakSelf = 15,
    FailedInValidRequestHandler = 16,
    FailedCannotDismantleNotAuthenticatedPasswordLock = 17,
    FailedCannotDismantleLockedPrivateByNotLocalPlayer = 18,
    FailedNotReady = 19,
    FailNotFoundClass = 20,
    FailLackSupportedLevel = 21,
    FailNotConnectToOther = 22,
    FailedNotInstallOnBackground = 23,
    FailOverlap = 24,
    FailedIntersectOtherObject = 25,
    FailNotAttachToWall = 26,
    FailNotAttachToCeil = 27,
    FailNotFoundBuildObjectData = 28,
    FailNotAvailableBaseCampBelongTo = 29,
    FailNotFoundBaseCampBelongTo = 30,
    FailSpawnNotFoundBaseCampBelongTo = 31,
    FailedExceedMaxNumInBaseCamp = 32,
    FailedNotExistsItemProviderPlaceOn = 33,
    FailedNotFoundModel = 34,
    FailedNotBuildObject = 35,
    FailedNotFoundBuildProcess = 36,
    FailedNotBuildingState = 37,
    FailNotFoundRequestPlayerPalStorage = 38,
    FailNotEnoughPalBoxEmptySlot = 39,
    FailedNotInstallBySurface = 40,
    FailedTooSteepSlopeAngle = 41,
    FailedAccessPointCannotGrounded = 42,
    FailedChestCannotGrounded = 43,
    FailedNotCanDismantleState = 44,
    FailedNotExistRequestPlayer = 45,
    FailedBuildingLimit = 46,
    Success = 47,
    EPalMapObjectOperationResult_MAX = 48,
}

---@enum EPalMapObjectPasswordLockState
EPalMapObjectPasswordLockState = {
    Lock = 0,
    Unlock = 1,
    EPalMapObjectPasswordLockState_MAX = 2,
}

---@enum EPalMapObjectRankUpCharacterResult
EPalMapObjectRankUpCharacterResult = {
    Success = 0,
    FailedNotValidIndividualHandle = 1,
    FailedNotValidIndividualParameter = 2,
    FailedNotValidPlayerState = 3,
    FailedNotValidPlayerPalStorage = 4,
    FailedNotExistsResourceCharacterInPalStorage = 5,
    FailedResourcePalIsFavoritePal = 6,
    FailedResourcePalInExpedition = 7,
    EPalMapObjectRankUpCharacterResult_MAX = 8,
}

---@enum EPalMapObjectSignificanceCalculationType
EPalMapObjectSignificanceCalculationType = {
    FromPlayerDistance = 0,
    FromPlayerDistanceXY = 1,
    EPalMapObjectSignificanceCalculationType_MAX = 2,
}

---@enum EPalMapObjectSpawnRequestType
EPalMapObjectSpawnRequestType = {
    MapObject = 0,
    PlayerBuild = 1,
    EPalMapObjectSpawnRequestType_MAX = 2,
}

---@enum EPalMapObjectSpawnerState
EPalMapObjectSpawnerState = {
    Init = 0,
    WaitForLoadingAround = 1,
    Active = 2,
    EPalMapObjectSpawnerState_MAX = 3,
}

---@enum EPalMapObjectSwitchState
EPalMapObjectSwitchState = {
    On = 0,
    Off = 1,
    EPalMapObjectSwitchState_MAX = 2,
}

---@enum EPalMapObjectTreasureGradeType
EPalMapObjectTreasureGradeType = {
    Grade1 = 0,
    Grade2 = 1,
    Grade3 = 2,
    Grade4 = 3,
    Grade5 = 4,
    Grade6 = 5,
    EPalMapObjectTreasureGradeType_MAX = 6,
}

---@enum EPalMapObjectType
EPalMapObjectType = {
    OnlyExist = 0,
    Foliage = 1,
    EPalMapObjectType_MAX = 2,
}

---@enum EPalMapObjectVisualEffectType
EPalMapObjectVisualEffectType = {
    Burn = 0,
    EPalMapObjectVisualEffectType_MAX = 1,
}

---@enum EPalMapObjectWorkerAvailableFacilityType
EPalMapObjectWorkerAvailableFacilityType = {
    PalBed = 0,
    Amusement = 1,
    Undefined = 2,
    EPalMapObjectWorkerAvailableFacilityType_MAX = 3,
}

---@enum EPalMasterDataExecPinType
EPalMasterDataExecPinType = {
    Success = 0,
    RowNotFound = 1,
    EPalMasterDataExecPinType_MAX = 2,
}

---@enum EPalMonsterControllerBaseCampLogType
EPalMonsterControllerBaseCampLogType = {
    Undefined = 0,
    SuccessFixedAssign = 1,
    FailedFixedAssignSimple = 2,
    FailedFixedAssignWithTargetWork = 3,
    FailedFixedAssignOverflowWorkers = 4,
    FailedFixedAssignNoWorkInRange = 5,
    FailedFixedAssignNotAssignableOtomo = 6,
    FailedFixedAssignNoSuitability = 7,
    FailedFixedAssignNotWantToDo = 8,
    EPalMonsterControllerBaseCampLogType_MAX = 9,
}

---@enum EPalMonsterEquipWeaponSocketType
EPalMonsterEquipWeaponSocketType = {
    None = 0,
    Socket_EquipWeapon_1 = 1,
    Socket_EquipWeapon_2 = 2,
    Socket_EquipWeapon_3 = 3,
    EPalMonsterEquipWeaponSocketType_MAX = 4,
}

---@enum EPalMonsterMovementType
EPalMonsterMovementType = {
    GroundOnly = 0,
    Fly = 1,
    FlyAndLanding = 2,
    Swim = 3,
    SwimGroundDamage = 4,
    EPalMonsterMovementType_MAX = 5,
}

---@enum EPalMovementSpeedType
EPalMovementSpeedType = {
    SlowWalk = 0,
    Walk = 1,
    Run = 2,
    TransportMove = 3,
    EPalMovementSpeedType_MAX = 4,
}

---@enum EPalNPCClothesType
EPalNPCClothesType = {
    None = 0,
    Mobu_A = 1,
    Mobu_B = 2,
    Mobu_C = 3,
    Mobu_D = 4,
    Mobu_E = 5,
    Pocile = 6,
    Hunter = 7,
    Shop = 8,
    EPalNPCClothesType_MAX = 9,
}

---@enum EPalNPCFaceType
EPalNPCFaceType = {
    None = 0,
    Mobu_A = 1,
    Mobu_B = 2,
    Mobu_C = 3,
    Pocile = 4,
    Hunter = 5,
    Shop = 6,
    EPalNPCFaceType_MAX = 7,
}

---@enum EPalNPCHairColorType
EPalNPCHairColorType = {
    None = 0,
    Black = 1,
    Silver = 2,
    LightBrown = 3,
    DarkBrown = 4,
    Beige = 5,
    Gold = 6,
    Ash = 7,
    Pink = 8,
    Red = 9,
    Violet = 10,
    EPalNPCHairColorType_MAX = 11,
}

---@enum EPalNPCHairStyleType
EPalNPCHairStyleType = {
    None = 0,
    Mobu_A = 1,
    Mobu_B = 2,
    Mobu_C = 3,
    Mobu_D = 4,
    Mobu_E = 5,
    Pocile = 6,
    Hunter = 7,
    Shop = 8,
    EPalNPCHairStyleType_MAX = 9,
}

---@enum EPalNPCScaleType
EPalNPCScaleType = {
    None = 0,
    S2 = 1,
    S1 = 2,
    M = 3,
    L1 = 4,
    L2 = 5,
    EPalNPCScaleType_MAX = 6,
}

---@enum EPalNPCSkinColor
EPalNPCSkinColor = {
    None = 0,
    White = 1,
    ReddishLight = 2,
    Light = 3,
    Default = 4,
    YellowishBrown = 5,
    Brown = 6,
    DarkBrown = 7,
    EPalNPCSkinColor_MAX = 8,
}

---@enum EPalNPCTalkCommand
EPalNPCTalkCommand = {
    SimpleMessages = 0,
    ChoiceYesNo = 1,
    CustomChoice = 2,
    TalkerNameChange = 3,
    CustomFunc = 4,
    CustomFuncBranch = 5,
    EPalNPCTalkCommand_MAX = 6,
}

---@enum EPalNPCTalkCustomFunctionResult
EPalNPCTalkCustomFunctionResult = {
    None = 0,
    ContinueProcess = 1,
    BreakProcess = 2,
    EPalNPCTalkCustomFunctionResult_MAX = 3,
}

---@enum EPalNPCTalkProceedResult
EPalNPCTalkProceedResult = {
    Failed = 0,
    CommandExecuted = 1,
    AllCommandComplete = 2,
    CommandExecutedAndContinueProcess = 3,
    EPalNPCTalkProceedResult_MAX = 4,
}

---@enum EPalNPCTalkSelectedChoiceCommand
EPalNPCTalkSelectedChoiceCommand = {
    EndTalk = 0,
    ChangeSeqence = 1,
    CustomFunc = 2,
    EPalNPCTalkSelectedChoiceCommand_MAX = 3,
}

---@enum EPalNPCTalkSelectedChoiceResult
EPalNPCTalkSelectedChoiceResult = {
    ExecutedBySystem = 0,
    RequestClose = 1,
    EPalNPCTalkSelectedChoiceResult_MAX = 2,
}

---@enum EPalNPCTalkUIType
EPalNPCTalkUIType = {
    None = 0,
    FreeTalk = 1,
    NormalShop = 2,
    WeaponShop = 3,
    PalShop = 4,
    QuestOrder = 5,
    RandomEventShop = 6,
    CollectionItemTrade_001 = 7,
    Doctor = 8,
    BountyShop = 9,
    EPalNPCTalkUIType_MAX = 10,
}

---@enum EPalNiagaraDataIterfaceSoundPlayerCommand
EPalNiagaraDataIterfaceSoundPlayerCommand = {
    None = 0,
    PlaySoundOneShot = 1,
    EPalNiagaraDataIterfaceSoundPlayerCommand_MAX = 2,
}

---@enum EPalObjectTypeQuery
EPalObjectTypeQuery = {
    Water = 0,
    Attack = 1,
    PlayerPawn = 2,
    Temperature = 3,
    SystemVolume = 4,
    LiftedupPawn = 5,
    AroundInfoCollect = 6,
    AttackHitOnly = 7,
    EPalObjectTypeQuery_MAX = 8,
}

---@enum EPalOilrigCombatHeliWeaponType
EPalOilrigCombatHeliWeaponType = {
    MachineGun = 0,
    Missile = 1,
    Bomb = 2,
    MachineGun_Wide = 3,
    EPalOilrigCombatHeliWeaponType_MAX = 4,
}

---@enum EPalOilrigType
EPalOilrigType = {
    Debug = 0,
    TypeA = 1,
    TypeB = 2,
    TypeC = 3,
    EPalOilrigType_MAX = 4,
}

---@enum EPalOneDayTimeType
EPalOneDayTimeType = {
    Undefined = 0,
    Day = 1,
    Night = 2,
    EPalOneDayTimeType_MAX = 3,
}

---@enum EPalOptimizeType
EPalOptimizeType = {
    Undefined = 0,
    XboxOne = 1,
    PS4 = 2,
    XboxSeries = 3,
    PS5 = 4,
    PC = 5,
    DedicatedServer = 6,
    CoopHost = 7,
    EPalOptimizeType_MAX = 8,
}

---@enum EPalOptionGraphicsLevel
EPalOptionGraphicsLevel = {
    None = 0,
    VeryLow = 1,
    Low = 2,
    Medium = 3,
    High = 4,
    VeryHigh = 5,
    EPalOptionGraphicsLevel_MAX = 6,
}

---@enum EPalOptionMapObjectDrawDistanceType
EPalOptionMapObjectDrawDistanceType = {
    Invalid = 0,
    VeryShort = 1,
    Short = 2,
    Normal = 3,
    Long = 4,
    VeryLong = 5,
    NoLimit = 6,
    EPalOptionMapObjectDrawDistanceType_MAX = 7,
}

---@enum EPalOptionWorldDeathPenalty
EPalOptionWorldDeathPenalty = {
    None = 0,
    Item = 1,
    ItemAndEquipment = 2,
    All = 3,
    EPalOptionWorldDeathPenalty_MAX = 4,
}

---@enum EPalOptionWorldDifficulty
EPalOptionWorldDifficulty = {
    None = 0,
    Easy = 1,
    Normal = 2,
    Hard = 3,
    Hardcore = 4,
    Custom = 5,
    EPalOptionWorldDifficulty_MAX = 6,
}

---@enum EPalOptionWorldMode
EPalOptionWorldMode = {
    None = 0,
    Single = 1,
    ListenMulti = 2,
    Dedicated_PvE = 3,
    Dedicated_PvP = 4,
    EPalOptionWorldMode_MAX = 5,
}

---@enum EPalOrganizationType
EPalOrganizationType = {
    None = 0,
    Guild = 1,
    Police = 2,
    City = 3,
    Brigade = 4,
    TeamBlackHunter = 5,
    TeamFireCult = 6,
    TeamWelfareGroup = 7,
    MAX = 8,
}

---@enum EPalOtomoPalOrderType
EPalOtomoPalOrderType = {
    Default = 0,
    Warlike = 1,
    NotCombat = 2,
    EPalOtomoPalOrderType_MAX = 3,
}

---@enum EPalPalDisplayCategory
EPalPalDisplayCategory = {
    Area_A1 = 0,
    Area_A2 = 1,
    Area_A3 = 2,
    Area_A4 = 3,
    Area_A5 = 4,
    Area_B1 = 5,
    Area_B2 = 6,
    Area_B3 = 7,
    Area_B4 = 8,
    Area_B5 = 9,
    Area_C1 = 10,
    Area_C2 = 11,
    Area_C3 = 12,
    Area_C4 = 13,
    Area_C5 = 14,
    Area_D1 = 15,
    Area_D2 = 16,
    Area_D3 = 17,
    Area_D4 = 18,
    Area_D5 = 19,
    Area_E1 = 20,
    Area_E2 = 21,
    Area_E3 = 22,
    Area_E4 = 23,
    Area_E5 = 24,
    Area_F1 = 25,
    Area_F2 = 26,
    Area_F3 = 27,
    Area_F4 = 28,
    Area_F5 = 29,
    Area_G1 = 30,
    Area_G2 = 31,
    Area_G3 = 32,
    Area_G4 = 33,
    Area_G5 = 34,
    Area_H1 = 35,
    Area_H2 = 36,
    Area_H3 = 37,
    Area_H4 = 38,
    Area_H5 = 39,
    Area_I1 = 40,
    Area_I2 = 41,
    Area_I3 = 42,
    Area_I4 = 43,
    Area_I5 = 44,
    Area_MAX = 45,
}

---@enum EPalPartnerSkillParameterQueryTag
EPalPartnerSkillParameterQueryTag = {
    MainDamage = 0,
    EPalPartnerSkillParameterQueryTag_MAX = 1,
}

---@enum EPalPartnerSkillTriggerType
EPalPartnerSkillTriggerType = {
    None = 0,
    PlayerTrigger = 1,
    OpenTreasure = 2,
    EPalPartnerSkillTriggerType_MAX = 3,
}

---@enum EPalPassiveCategory
EPalPassiveCategory = {
    SortDisplayable = 0,
    SortNotDisplayable = 1,
    EPalPassiveCategory_MAX = 2,
}

---@enum EPalPassivePartnerSkillState
EPalPassivePartnerSkillState = {
    None = 0,
    Active = 1,
    ActivateDelay = 2,
    Inactive = 3,
    ActivateLocked = 4,
    EPalPassivePartnerSkillState_MAX = 5,
}

---@enum EPalPassiveSkillEffectTargetItemType
EPalPassiveSkillEffectTargetItemType = {
    None = 0,
    Bullet = 1,
    Dish = 2,
    Ingot = 3,
    Ore = 4,
    CaptureBall = 5,
    Glider = 6,
    ArmorHead = 7,
    ArmorBody = 8,
    Weapon = 9,
    Medicine = 10,
    Shield = 11,
    PalGear = 12,
    EPalPassiveSkillEffectTargetItemType_MAX = 13,
}

---@enum EPalPassiveSkillEffectTargetType
EPalPassiveSkillEffectTargetType = {
    None = 0,
    ToSelf = 1,
    ToTrainer = 2,
    ToSelfAndTrainer = 3,
    ToBaseCampPal = 4,
    ToBuildObject = 5,
    ToOtomo = 6,
    ToTrainerAndOtomo = 7,
    EPalPassiveSkillEffectTargetType_MAX = 8,
}

---@enum EPalPassiveSkillEffectType
EPalPassiveSkillEffectType = {
    no = 0,
    MaxHP = 1,
    MeleeAttack = 2,
    ShotAttack = 3,
    Defense = 4,
    Support = 5,
    CraftSpeed = 6,
    MoveSpeed = 7,
    Homing = 8,
    Explosive = 9,
    BulletSpeed = 10,
    BulletAccuracy = 11,
    Recoil = 12,
    ElementFire = 13,
    ElementWater = 14,
    ElementLeaf = 15,
    ElementElectricity = 16,
    ElementIce = 17,
    ElementEarth = 18,
    ElementDark = 19,
    ElementDragon = 20,
    ElementResist_Normal = 21,
    ElementResist_Fire = 22,
    ElementResist_Water = 23,
    ElementResist_Leaf = 24,
    ElementResist_Electricity = 25,
    ElementResist_Ice = 26,
    ElementResist_Earth = 27,
    ElementResist_Dark = 28,
    ElementResist_Dragon = 29,
    ElementBoost_Normal = 30,
    ElementBoost_Fire = 31,
    ElementBoost_Water = 32,
    ElementBoost_Leaf = 33,
    ElementBoost_Electricity = 34,
    ElementBoost_Ice = 35,
    ElementBoost_Earth = 36,
    ElementBoost_Dark = 37,
    ElementBoost_Dragon = 38,
    ElementAddItemDrop_Normal = 39,
    ElementAddItemDrop_Fire = 40,
    ElementAddItemDrop_Water = 41,
    ElementAddItemDrop_Leaf = 42,
    ElementAddItemDrop_Electricity = 43,
    ElementAddItemDrop_Ice = 44,
    ElementAddItemDrop_Earth = 45,
    ElementAddItemDrop_Dark = 46,
    ElementAddItemDrop_Dragon = 47,
    MoveSpeed_Ground = 48,
    MoveSpeed_Wood = 49,
    MoveSpeed_Grass = 50,
    MoveSpeed_Stone = 51,
    MoveSpeed_Water = 52,
    MoveSpeed_Snow = 53,
    MoveSpeed_Lava = 54,
    MoveSpeed_Night = 55,
    CollectItem = 56,
    Mute = 57,
    Logging = 58,
    Mining = 59,
    GainItemDrop = 60,
    CollectItemDrop = 61,
    LifeSteal = 62,
    TemperatureResist_Heat = 63,
    TemperatureResist_Cold = 64,
    TemperatureInvalid_Heat = 65,
    TemperatureInvalid_Cold = 66,
    MaxInventoryWeight = 67,
    FullStomatch_Decrease = 68,
    Sanity_Decrease = 69,
    BodyPartsWeakDamage = 70,
    NonKilling = 71,
    ItemWeightReduction = 72,
    PalExp_Increase = 73,
    PalSP_Increase = 74,
    ShopBuyPrice_Money_Increase = 75,
    ShopSellPrice_Money_Increase = 76,
    BreedSpeed = 77,
    Nocturnal = 78,
    JumpPower_Increase = 79,
    JumpCount_Increase = 80,
    PalEggHatchingSpeed = 81,
    FarmCropGrowupSpeed = 82,
    SyncroPassiveWhenCapture = 83,
    ActiveSkillCoolTime_Decrease = 84,
    Regene_HP = 85,
    CurveType = 86,
    CaptureLevel = 87,
    ProductExtraItemProbability = 88,
    ProductItemConsumeMaterialNumRate = 89,
    PalEggHatchingSpeedRequiredWarm = 90,
    PalEggHatchingSpeedRequiredCool = 91,
    FarmCropHarvestNumRate = 92,
    EnergyStorageRate = 93,
    ConsumeEnergyRate = 94,
    AttackRateBaseCampWorker = 95,
    DefenseRateBaseCampWorker = 96,
    OilExtractionSpeedRate = 97,
    ItemCorruptionSpeedRate = 98,
    ExpeditionTimeCostRate = 99,
    ExpeditionRewardRate = 100,
    LabResearchSpeed = 101,
    AirDash = 102,
    MeatCutAddItemDrop = 103,
    EPalPassiveSkillEffectType_MAX = 104,
}

---@enum EPalPassiveSkillState
EPalPassiveSkillState = {
    None = 0,
    Active = 1,
    ActivateDelay = 2,
    Inactive = 3,
    ActivateLocked = 4,
    EPalPassiveSkillState_MAX = 5,
}

---@enum EPalPassiveTriggerType
EPalPassiveTriggerType = {
    None = 0,
    ActiveOtomo = 1,
    Worker = 2,
    Ride = 4,
    Reserve = 8,
    InOtomo = 16,
    InBaseCamp = 32,
    Always = 64,
    EPalPassiveTriggerType_MAX = 65,
}

---@enum EPalPettingSizeType
EPalPettingSizeType = {
    Small = 0,
    SmallMiddle = 1,
    Medium = 2,
    Large = 3,
    EPalPettingSizeType_MAX = 4,
}

---@enum EPalPhysicalSurface
EPalPhysicalSurface = {
    Default = 0,
    Ground = 1,
    Wood = 2,
    Grass = 3,
    Stone = 4,
    Water = 5,
    Snow = 6,
    Lava = 7,
    EPalPhysicalSurface_MAX = 8,
}

---@enum EPalPhysicsBoneType
EPalPhysicsBoneType = {
    None = 0,
    AttachRope = 1,
    AttachRopeTrapLeg = 2,
    EPalPhysicsBoneType_MAX = 3,
}

---@enum EPalPickingGameDifficultyType
EPalPickingGameDifficultyType = {
    Invalid = 0,
    VeryEasy = 1,
    Easy = 2,
    Normal = 3,
    Hard = 4,
    VeryHard = 5,
    EPalPickingGameDifficultyType_MAX = 6,
}

---@enum EPalPickingGameState
EPalPickingGameState = {
    Pause = 0,
    InGame = 1,
    EPalPickingGameState_MAX = 2,
}

---@enum EPalPlayerAccountState
EPalPlayerAccountState = {
    Uninitialized = 0,
    Initialized = 1,
    InNewCreation = 2,
    Login = 3,
    Logout = 4,
    EPalPlayerAccountState_MAX = 5,
}

---@enum EPalPlayerBattleFinishType
EPalPlayerBattleFinishType = {
    Undefined = 0,
    Escape = 1,
    Victory = 2,
    Capture = 3,
    EPalPlayerBattleFinishType_MAX = 4,
}

---@enum EPalPlayerDamageCameraShakeCategory
EPalPlayerDamageCameraShakeCategory = {
    None = 0,
    Waza_S = 1,
    Waza_M = 2,
    Waza_L = 3,
    Gun_S = 4,
    Gun_M = 5,
    Gun_L = 6,
    Melee = 7,
    EPalPlayerDamageCameraShakeCategory_MAX = 8,
}

---@enum EPalPlayerEquipItemSlotType
EPalPlayerEquipItemSlotType = {
    Head = 0,
    Body = 1,
    Accessory1 = 2,
    Accessory2 = 3,
    Shield = 4,
    Glider = 5,
    Accessory3 = 6,
    Accessory4 = 7,
    CaptureItemModifier = 8,
    Max = 9,
}

---@enum EPalPlayerInputButtonType
EPalPlayerInputButtonType = {
    None = 0,
    OnPress = 1,
    OnRelease = 2,
    EPalPlayerInputButtonType_MAX = 3,
}

---@enum EPalPlayerInventoryType
EPalPlayerInventoryType = {
    Common = 0,
    DropSlot = 1,
    Essential = 2,
    WeaponLoadout = 3,
    PlayerEquipArmor = 4,
    FoodEquip = 5,
    None = 6,
    EPalPlayerInventoryType_MAX = 7,
}

---@enum EPalPlayerJoinResult
EPalPlayerJoinResult = {
    Success = 0,
    FailedInvalidLoginPlayerId = 1,
    FailedInvalidLoginPlayerCharacterHandle = 2,
    FailedDuplicateAccountCreation = 3,
    EPalPlayerJoinResult_MAX = 4,
}

---@enum EPalPlayerReplicationEntityType
EPalPlayerReplicationEntityType = {
    GuildChest = 0,
    CharacterTeamMissionAssignedInfo = 1,
    EPalPlayerReplicationEntityType_MAX = 2,
}

---@enum EPalPlayerSprintStaminaDecreaseType
EPalPlayerSprintStaminaDecreaseType = {
    Ignore = 0,
    OnlyBattleMode = 1,
    Always = 2,
    EPalPlayerSprintStaminaDecreaseType_MAX = 3,
}

---@enum EPalRadarChartDrawType
EPalRadarChartDrawType = {
    Polygon = 0,
    Polygon_Bordered = 1,
    OnlyBorder = 2,
    EPalRadarChartDrawType_MAX = 3,
}

---@enum EPalRagdollPresetType
EPalRagdollPresetType = {
    None = 0,
    BeLiftup = 1,
    EPalRagdollPresetType_MAX = 2,
}

---@enum EPalRaidBossBattleFinishType
EPalRaidBossBattleFinishType = {
    Success = 0,
    TimeUp = 1,
    BaseCampDestroyed = 2,
    EPalRaidBossBattleFinishType_MAX = 3,
}

---@enum EPalRaidBossBattleStartRequestResult
EPalRaidBossBattleStartRequestResult = {
    FailedNotValidBaseCampId = 0,
    FailedAlreadyStarted = 1,
    Success = 2,
    EPalRaidBossBattleStartRequestResult_MAX = 3,
}

---@enum EPalRaidBossBattleStateType
EPalRaidBossBattleStateType = {
    Standy = 0,
    Combat = 1,
    Finished = 2,
    EPalRaidBossBattleStateType_MAX = 3,
}

---@enum EPalRandomIncidentActionNotifyType
EPalRandomIncidentActionNotifyType = {
    None = 0,
    RestartExcludedSpawner = 1,
    EPalRandomIncidentActionNotifyType_MAX = 2,
}

---@enum EPalRandomIncidentSpawnerAreaType
EPalRandomIncidentSpawnerAreaType = {
    Unknown = 0,
    Spawn = 1,
    Exclusion = 2,
    Action = 3,
    End = 4,
    EPalRandomIncidentSpawnerAreaType_MAX = 5,
}

---@enum EPalRandomIncidentSpawnerStatus
EPalRandomIncidentSpawnerStatus = {
    Unknown = 0,
    Idle = 1,
    CoolDown = 2,
    Executing = 3,
    WaitPlayerOutside = 4,
    EPalRandomIncidentSpawnerStatus_MAX = 5,
}

---@enum EPalRandomizerType
EPalRandomizerType = {
    None = 0,
    Region = 1,
    All = 2,
    EPalRandomizerType_MAX = 3,
}

---@enum EPalRequestSoftScriptPriorityAdd
EPalRequestSoftScriptPriorityAdd = {
    SoftScript = 0,
    SoftScriptInterrupt = 1,
    SoftScript_2 = 2,
    SoftScript_3 = 3,
    SoftScript_4 = 4,
    SoftScript_5 = 5,
    SoftScript_6 = 6,
    SoftScript_7 = 7,
    SoftScript_8 = 8,
    SoftScript_9 = 9,
    EPalRequestSoftScriptPriorityAdd_MAX = 10,
}

---@enum EPalRidePositionType
EPalRidePositionType = {
    None = 0,
    HorseRide = 1,
    BiggerHorseRide = 2,
    SitRide = 3,
    BackRide = 4,
    EPalRidePositionType_MAX = 5,
}

---@enum EPalSaveDataRestoreResultType
EPalSaveDataRestoreResultType = {
    Success_AllSave = 0,
    Succcess_NotExistLocalSaveBackup = 1,
    Failed_NotExistWorldSaveBackup = 2,
    Failed_NotExistAllSave = 3,
    Failed_Unknown = 4,
    EPalSaveDataRestoreResultType_MAX = 5,
}

---@enum EPalSaveError
EPalSaveError = {
    Success = 0,
    NotFound = 1,
    Unknown = 2,
    EPalSaveError_MAX = 3,
}

---@enum EPalScrollWhenFocusChanges
EPalScrollWhenFocusChanges = {
    NoScroll = 0,
    InstantScroll = 1,
    AnimatedScroll = 2,
    EPalScrollWhenFocusChanges_MAX = 3,
}

---@enum EPalShooterFlagContainerPriority
EPalShooterFlagContainerPriority = {
    Weapon = 0,
    Ball = 1,
    EPalShooterFlagContainerPriority_MAX = 2,
}

---@enum EPalShopBuyResultType
EPalShopBuyResultType = {
    Successed = 0,
    Failed_InvalidBuyNum = 1,
    Failed_NotEnoughStock = 2,
    Failed_NotEnoughMoney = 3,
    Failed_NotEnoughItemSlot = 4,
    Failed_NotEnoughCharacterSlot = 5,
    Failed_ExistReservedProcess = 6,
    Failed_NotFoundItemContainer = 7,
    Failed_NotFoundPlayerInventoryData = 8,
    Failed_NotFoundPlayerMoneyData = 9,
    Failed_NotFoundProduct = 10,
    Failed_NotFoundShop = 11,
    Failed_NotFoundStoredPal = 12,
    Failed_NotFoundProductGiver = 13,
    Failed_NotFoundCostTaker = 14,
    Failed_NotSupportedCost = 15,
    Failed_AlreadyHasItem = 16,
    Unknown = 17,
    EPalShopBuyResultType_MAX = 18,
}

---@enum EPalShopLotteryBiomeType
EPalShopLotteryBiomeType = {
    None = 0,
    Plain = 1,
    EPalShopLotteryBiomeType_MAX = 2,
}

---@enum EPalShopLotteryType
EPalShopLotteryType = {
    None = 0,
    SimpleLottery = 1,
    BiomeLottery = 2,
    EPalShopLotteryType_MAX = 3,
}

---@enum EPalShopProductCostType
EPalShopProductCostType = {
    Invalid = 0,
    StaticItemNum = 1,
    EPalShopProductCostType_MAX = 2,
}

---@enum EPalShopSellResultType
EPalShopSellResultType = {
    Successed = 0,
    Failed = 1,
    EPalShopSellResultType_MAX = 2,
}

---@enum EPalSizeType
EPalSizeType = {
    None = 0,
    XS = 1,
    S = 2,
    M = 3,
    L = 4,
    XL = 5,
    EPalSizeType_MAX = 6,
}

---@enum EPalSkeletalMeshType
EPalSkeletalMeshType = {
    Normal = 0,
    Head = 1,
    Hair = 2,
    Body = 3,
    HairAttachAccessory = 4,
    EPalSkeletalMeshType_MAX = 5,
}

---@enum EPalSkeletalTickLayer
EPalSkeletalTickLayer = {
    Default = 0,
    Ragdoll = 1,
    EPalSkeletalTickLayer_MAX = 2,
}

---@enum EPalSkinType
EPalSkinType = {
    None = 0,
    Head = 1,
    Body = 2,
    Glider = 3,
    Weapon = 4,
    Pal = 5,
    EPalSkinType_MAX = 6,
}

---@enum EPalSpawnRadiusType
EPalSpawnRadiusType = {
    S = 0,
    M = 1,
    L = 2,
    NPC = 3,
    Override = 4,
    EPalSpawnRadiusType_MAX = 5,
}

---@enum EPalSpawnedCharacterType
EPalSpawnedCharacterType = {
    Common = 0,
    Rare = 1,
    FieldBoss = 2,
    RandomDungeonBoss = 3,
    ImprisonmentBoss = 4,
    TowerBoss = 5,
    RaidBoss = 6,
    RaidBossServant = 7,
    Predator = 8,
    EPalSpawnedCharacterType_MAX = 9,
}

---@enum EPalSpawnerPlacementType
EPalSpawnerPlacementType = {
    Field = 0,
    FieldBoss = 1,
    Dungeon = 2,
    DungeonBoss = 3,
    ImprisonmentBoss = 4,
    EPalSpawnerPlacementType_MAX = 5,
}

---@enum EPalSpecialAttackRateType
EPalSpecialAttackRateType = {
    None = 0,
    vsWood = 1,
    vsStone = 2,
    vsWood_Raid = 3,
    vsStone_Raid = 4,
    EPalSpecialAttackRateType_MAX = 5,
}

---@enum EPalSpwnerImportanceType
EPalSpwnerImportanceType = {
    Undefined = 0,
    AllUpdate = 1,
    Near = 2,
    Mid = 3,
    Far = 4,
    EPalSpwnerImportanceType_MAX = 5,
}

---@enum EPalStagePlayerState
EPalStagePlayerState = {
    Init = 0,
    WaitingStageLoad = 1,
    Login = 2,
    InExiting = 3,
    EPalStagePlayerState_MAX = 4,
}

---@enum EPalStageRequestResult
EPalStageRequestResult = {
    FailedNotValidStage = 0,
    FailedNotValidPlayerUId = 1,
    FailedNotValidPlayerState = 2,
    FailedNotValidPlayerController = 3,
    FailedNotValidPlayerCharacter = 4,
    FailedNotValidLoginPlayer = 5,
    FailedNotValidNetworkPlayerComponent = 6,
    FailedPlayerIsDead = 7,
    FailedNotValidStageWorldSubsystem = 8,
    FailedGetStartPointTransform = 9,
    FailedGetReturnToFieldPointTransform = 10,
    Success = 11,
    EPalStageRequestResult_MAX = 12,
}

---@enum EPalStageType
EPalStageType = {
    Undefined = 0,
    Dungeon = 1,
    BossBattle = 2,
    Arena = 3,
    Room = 4,
    EPalStageType_MAX = 5,
}

---@enum EPalStatusHungerType
EPalStatusHungerType = {
    Default = 0,
    Hunger = 1,
    Starvation = 2,
    EPalStatusHungerType_MAX = 3,
}

---@enum EPalStatusID
EPalStatusID = {
    None = 0,
    ControlSP = 1,
    GainHP = 2,
    StepCooldown = 3,
    DrownCheck = 4,
    Poison = 5,
    UNKOTimer = 6,
    Stan = 7,
    Coma = 8,
    Sleep = 9,
    Overwork = 10,
    Happiness = 11,
    Resistance = 12,
    Moratorium = 13,
    Drown = 14,
    Dying = 15,
    ShieldRecovery = 16,
    FallDamage = 17,
    LavaDamage = 18,
    Burn = 19,
    Wetness = 20,
    Freeze = 21,
    Electrical = 22,
    Muddy = 23,
    IvyCling = 24,
    Darkness = 25,
    AttackUp = 26,
    DefenseUp = 27,
    CollectItem = 28,
    LifeSteal = 29,
    RaidBossStatusChange = 30,
    RarePalEffect = 31,
    EPalStatusID_MAX = 32,
}

---@enum EPalStatusPhysicalHealthType
EPalStatusPhysicalHealthType = {
    Healthful = 0,
    MinorInjury = 1,
    Severe = 2,
    Dying = 3,
    DeadBody = 4,
    CloudCemetery = 5,
    EPalStatusPhysicalHealthType_MAX = 6,
}

---@enum EPalStepAxisType
EPalStepAxisType = {
    Forward = 0,
    Back = 1,
    Right = 2,
    Left = 3,
    ForwardRight = 4,
    ForwardLeft = 5,
    BackRight = 6,
    BackLeft = 7,
    EPalStepAxisType_MAX = 8,
}

---@enum EPalSupplyType
EPalSupplyType = {
    None = 0,
    Capsule = 1,
    Meteor = 2,
    EPalSupplyType_MAX = 3,
}

---@enum EPalSupportedPlatformType
EPalSupportedPlatformType = {
    Unknown = 0,
    Windows = 1,
    WinGDK = 2,
    XB1 = 3,
    XSX = 4,
    Linux = 5,
    PS5Base = 6,
    PS5Trinity = 7,
    EPalSupportedPlatformType_MAX = 8,
}

---@enum EPalTalentType
EPalTalentType = {
    HP = 0,
    Attack = 1,
    Defense = 2,
    EPalTalentType_MAX = 3,
}

---@enum EPalTraceTypeQuery
EPalTraceTypeQuery = {
    FluidTrace = 0,
    ReticleRayCast = 1,
    AISightRayCast = 2,
    vsGroundRayCast = 3,
    WaterPlaneRayCast = 4,
    ClimbRayCast = 5,
    RollingRayCast = 6,
    EPalTraceTypeQuery_MAX = 7,
}

---@enum EPalTribeID
EPalTribeID = {
    None = 0,
    Anubis = 1,
    Baphomet = 2,
    Baphomet_Dark = 3,
    Bastet = 4,
    Bastet_Ice = 5,
    Boar = 6,
    Carbunclo = 7,
    ColorfulBird = 8,
    Deer = 9,
    DrillGame = 10,
    Eagle = 11,
    ElecPanda = 12,
    Ganesha = 13,
    Garm = 14,
    Gorilla = 15,
    Hedgehog = 16,
    Hedgehog_Ice = 17,
    Kirin = 18,
    Kitsunebi = 19,
    LittleBriarRose = 20,
    Mutant = 21,
    Owl = 22,
    Penguin = 23,
    RaijinDaughter = 24,
    SharkKid = 25,
    SheepBall = 26,
    Umihebi = 27,
    Werewolf = 28,
    WindChimes = 29,
    Suzaku = 30,
    Suzaku_Water = 31,
    FireKirin = 32,
    FairyDragon = 33,
    FairyDragon_Water = 34,
    SweetsSheep = 35,
    WhiteTiger = 36,
    Alpaca = 37,
    Serpent = 38,
    Serpent_Ground = 39,
    DarkCrow = 40,
    BlueDragon = 41,
    PinkCat = 42,
    NegativeKoala = 43,
    FengyunDeeper = 44,
    VolcanicMonster = 45,
    VolcanicMonster_Ice = 46,
    GhostBeast = 47,
    RobinHood = 48,
    LazyDragon = 49,
    LazyDragon_Electric = 50,
    AmaterasuWolf = 51,
    LizardMan = 52,
    Blueplatypus = 53,
    BlackFurDragon = 54,
    BeardedDragon = 55,
    BirdDragon = 56,
    BirdDragon_Ice = 57,
    PinkKangaroo = 58,
    ChickenPal = 59,
    FlowerDinosaur = 60,
    FlowerDinosaur_Electric = 61,
    ElecCat = 62,
    IceHorse = 63,
    IceHorse_Dark = 64,
    GrassMammoth = 65,
    CatVampire = 66,
    SakuraSaurus = 67,
    SakuraSaurus_Water = 68,
    Horus = 69,
    KingBahamut = 70,
    BerryGoat = 71,
    IceDeer = 72,
    BlackGriffon = 73,
    WhiteMoth = 74,
    CuteFox = 75,
    FoxMage = 76,
    PinkLizard = 77,
    WaterLizard = 78,
    ElecLion = 79,
    GuardianDog = 80,
    GrassDragon = 81,
    WizardOwl = 82,
    Kelpie = 83,
    NegativeOctopus = 84,
    CowPal = 85,
    Yeti = 86,
    Yeti_Grass = 87,
    VioletFairy = 88,
    HawkBird = 89,
    FlowerRabbit = 90,
    LilyQueen = 91,
    LilyQueen_Dark = 92,
    QueenBee = 93,
    SoldierBee = 94,
    CatBat = 95,
    GrassPanda = 96,
    GrassPanda_Electric = 97,
    FlameBuffalo = 98,
    ThunderDog = 99,
    CuteMole = 100,
    BlackMetalDragon = 101,
    GrassRabbitMan = 102,
    IceFox = 103,
    JetDragon = 104,
    DreamDemon = 105,
    Monkey = 106,
    Manticore = 107,
    Manticore_Dark = 108,
    KingAlpaca = 109,
    PlantSlime = 110,
    DarkMutant = 111,
    MopBaby = 112,
    MopKing = 113,
    CatMage = 114,
    PinkRabbit = 115,
    ThunderBird = 116,
    HerculesBeetle = 117,
    SaintCentaur = 118,
    NightFox = 119,
    CaptainPenguin = 120,
    WeaselDragon = 121,
    SkyDragon = 122,
    HadesBird = 123,
    RedArmorBird = 124,
    Ronin = 125,
    FlyingManta = 126,
    BlackCentaur = 127,
    FlowerDoll = 128,
    NaughtyCat = 129,
    CuteButterfly = 130,
    DarkScorpion = 131,
    ThunderDragonMan = 132,
    WoolFox = 133,
    SifuDog = 134,
    TentacleTurtle = 135,
    BrownRabbit = 136,
    FeatherOstrich = 137,
    WingGolem = 138,
    ScorpionMan = 139,
    LazyCatfish = 140,
    Deer_Ground = 141,
    FireKirin_Dark = 142,
    KingAlpaca_Ice = 143,
    RobinHood_Ground = 144,
    GrassMammoth_Ice = 145,
    Kelpie_Fire = 146,
    SharkKid_Fire = 147,
    LizardMan_Fire = 148,
    LavaGirl = 149,
    FlameBambi = 150,
    Umihebi_Fire = 151,
    WindChimes_Ice = 152,
    NightLady = 153,
    VolcanoDragon = 154,
    DarkAlien = 155,
    LeafPrincess = 156,
    WhiteAlienDragon = 157,
    MushroomDragon = 158,
    SmallArmadillo = 159,
    KendoFrog = 160,
    CandleGhost = 161,
    KingWhale = 162,
    HoodGhost = 163,
    Sekhmet = 164,
    ElecLizard = 165,
    MoonQueen = 166,
    NightLady_Dark = 167,
    RockBeast = 168,
    KingBahamut_Dragon = 169,
    Gorilla_Ground = 170,
    HadesBird_Electric = 171,
    MushroomDragon_Dark = 172,
    DarkScorpion_Ground = 173,
    Ronin_Dark = 174,
    CatMage_Fire = 175,
    FoxMage_Dark = 176,
    SkyDragon_Grass = 177,
    WeaselDragon_Fire = 178,
    OctopusGirl = 179,
    MimicDog = 180,
    IceNarwhal = 181,
    JellyfishFairy = 182,
    GoldenHorse = 183,
    BadCatgirl = 184,
    BlueberryFairy = 185,
    DarkMechaDragon = 186,
    GhostRabbit = 187,
    NightBlueHorse = 188,
    WhiteShieldDragon = 189,
    BlackPuppy = 190,
    WhiteDeer = 191,
    MysteryMask = 192,
    GrimGirl = 193,
    PurpleSpider = 194,
    BlueThunderHorse = 195,
    SnowTigerBeastman = 196,
    Kitsunebi_Ice = 197,
    RaijinDaughter_Water = 198,
    WhiteTiger_Ground = 199,
    FengyunDeeper_Electric = 200,
    BerryGoat_Dark = 201,
    Werewolf_Ice = 202,
    Horus_Water = 203,
    KendoFrog_Dark = 204,
    HerculesBeetle_Ground = 205,
    AmaterasuWolf_Dark = 206,
    ZENITH_01 = 207,
    PinkRabbit_Grass = 208,
    SnakeGirl = 209,
    GhostAnglerfish = 210,
    IceWitch = 211,
    ClownRabbit = 212,
    LegendDeer = 213,
    LeafMomonga = 214,
    SmallYeti = 215,
    IceCrocodile = 216,
    CactusDoll = 217,
    MushroomLady = 218,
    StuffedShark = 219,
    FoxExorcist = 220,
    IceSeal = 221,
    CloverFairy = 222,
    ElecPomeranian = 223,
    GhostBlackCat = 224,
    ThiefBird = 225,
    OniGhostGirl = 226,
    KingCrab = 227,
    Plesiosaur = 228,
    TropicalOstrich = 229,
    GrassGolem = 230,
    SnowPeafowl = 231,
    PyramidTurtle = 232,
    LongCat = 233,
    Human = 234,
    EPalTribeID_MAX = 235,
}

---@enum EPalTutorialTriggerConditionType
EPalTutorialTriggerConditionType = {
    None = 0,
    GetItem = 1,
    MeetBuildRequirement = 2,
    NewPal = 3,
    SamePal = 4,
    PalCount = 5,
    HighLevel = 6,
    RarePal = 7,
    CaptureFail = 8,
    OverWeight = 9,
    Night = 10,
    PalDeath = 11,
    BuildAppointment = 12,
    SummonCampPal = 13,
    LearnSkill = 14,
    AttackNoWeapon = 15,
    ObtainNote = 16,
    LevelUp = 17,
    Hunger = 18,
    PalHunger = 19,
    SAN = 20,
    Sick = 21,
    SkipWork = 22,
    EPalTutorialTriggerConditionType_MAX = 23,
}

---@enum EPalTutorialTriggerType
EPalTutorialTriggerType = {
    None = 0,
    AddItem = 1,
    IndividualParam = 2,
    PlayerDeath = 3,
    Capture = 4,
    Common = 5,
    EPalTutorialTriggerType_MAX = 6,
}

---@enum EPalUICommonWarningType
EPalUICommonWarningType = {
    Default = 0,
    MissileWarning = 1,
    RaidWarning = 2,
    EPalUICommonWarningType_MAX = 3,
}

---@enum EPalUIConditionType
EPalUIConditionType = {
    None = 0,
    Happy = 1,
    Unhappy = 2,
    MinorInjury = 3,
    Severe = 4,
    Dying = 5,
    Hunger = 6,
    Starvation = 7,
    Cold = 8,
    Sprain = 9,
    Bulimia = 10,
    GastricUlcer = 11,
    Fracture = 12,
    Weakness = 13,
    DepressionSprain = 14,
    DisturbingElement = 15,
    EPalUIConditionType_MAX = 16,
}

---@enum EPalUIConvertItemRequestStartResponse
EPalUIConvertItemRequestStartResponse = {
    Enable = 0,
    FailedNotSelectedRecipe = 1,
    FailedNotExistConcreteModel = 2,
    FailedNotExistEnergyModule = 3,
    FailedNotEnoughItems = 4,
    FailedNotEnoughEnergy = 5,
    EPalUIConvertItemRequestStartResponse_MAX = 6,
}

---@enum EPalUIFixedAssignManageListSortType
EPalUIFixedAssignManageListSortType = {
    RadialIndex = 0,
    Suitability = 1,
    EPalUIFixedAssignManageListSortType_MAX = 2,
}

---@enum EPalUIJoinGameInputCodeType
EPalUIJoinGameInputCodeType = {
    Password = 0,
    InviteCode = 1,
    EPalUIJoinGameInputCodeType_MAX = 2,
}

---@enum EPalUILiftSlotType
EPalUILiftSlotType = {
    None = 0,
    Item = 1,
    CharacterHandle = 2,
    EPalUILiftSlotType_MAX = 3,
}

---@enum EPalUIPalCharacterRankUpRequestResult
EPalUIPalCharacterRankUpRequestResult = {
    Success = 0,
    FailedNotValidMapObject = 1,
    FailedNotSetTarget = 2,
    FailedCannotRankUp = 3,
    FailedNotEnoughResources = 4,
    EPalUIPalCharacterRankUpRequestResult_MAX = 5,
}

---@enum EPalUIPalCharacterRankUpSelectMode
EPalUIPalCharacterRankUpSelectMode = {
    SelectReferenceSlot = 0,
    SelectIndividualSlot = 1,
    EPalUIPalCharacterRankUpSelectMode_MAX = 2,
}

---@enum EPalUIPalCharacterRankUpSelectResourceType
EPalUIPalCharacterRankUpSelectResourceType = {
    Newer = 0,
    Older = 1,
    EPalUIPalCharacterRankUpSelectResourceType_MAX = 2,
}

---@enum EPalUIPaldexPanelDetailType
EPalUIPaldexPanelDetailType = {
    None = 0,
    NotEncount = 1,
    Encounted = 2,
    Captured = 3,
    EPalUIPaldexPanelDetailType_MAX = 4,
}

---@enum EPalUIRewardDisplayType
EPalUIRewardDisplayType = {
    Default = 0,
    GetItem = 1,
    HatchedPal = 2,
    FastTravel = 3,
    DefeatBoss = 4,
    UnlockHardMode = 5,
    NoTitleHint = 6,
    EPalUIRewardDisplayType_MAX = 7,
}

---@enum EPalUISelectNumResult
EPalUISelectNumResult = {
    Canceled = 0,
    Complate = 1,
    EPalUISelectNumResult_MAX = 2,
}

---@enum EPalUIServerListFilterType
EPalUIServerListFilterType = {
    Official = 0,
    Community = 1,
    History = 2,
    EPalUIServerListFilterType_MAX = 3,
}

---@enum EPalUIServerListSortType
EPalUIServerListSortType = {
    Latest = 0,
    DaysAsc = 1,
    DaysDesc = 2,
    CurrentPlayerAsc = 3,
    CurrentPlayerDesc = 4,
    EPalUIServerListSortType_MAX = 5,
}

---@enum EPalUIWorkerCommentType
EPalUIWorkerCommentType = {
    None = 0,
    Normal = 1,
    Normal_Craftsman = 2,
    Normal_Sabotage = 3,
    Dying = 4,
    Hungry_Half = 5,
    Hungry_Low = 6,
    Hungry_Starvation = 7,
    LowSanity_Half = 8,
    LowSanity_Warning = 9,
    LowSanity_Emergency = 10,
    Illnesses = 11,
    Injuries = 12,
    Bulimia = 13,
    Weakness = 14,
    DisturbingElement = 15,
    DodgeWork = 16,
    DodgeWork_Short = 17,
    DodgeWork_Sleep = 18,
    EatTooMuch = 19,
    Trantrum = 20,
    EPalUIWorkerCommentType_MAX = 21,
}

---@enum EPalVisualEffectID
EPalVisualEffectID = {
    None = 0,
    CaptureEmissive = 1,
    SpawnFromBallEmissive = 2,
    ReturnToBallEmissive = 3,
    FadeOut = 4,
    FadeIn = 5,
    PalOutlineFadeIn = 6,
    PalOutlineFadeOut = 7,
    PalBattleOutline = 8,
    Poison = 9,
    PowerUp = 10,
    DeadEffect = 11,
    FireCondition = 12,
    WaterCondition = 13,
    IceCondition = 14,
    ElectricityCondition = 15,
    EarthCondition = 16,
    LeafCondition = 17,
    DarkCondition = 18,
    Swimming = 19,
    CameraVignette = 20,
    PalEffectFadeIn = 21,
    PalEffectFadeOut = 22,
    RarePal = 23,
    FunnelStartEmissive = 24,
    FunnelEndEmissive = 25,
    SelfDestructEmissive = 26,
    Mosaic = 27,
    ChangeElement_Ice = 28,
    ChangeElement_Normal = 29,
    ChangeElement_Fire = 30,
    ChangeElement_Water = 31,
    ChangeElement_Leaf = 32,
    ChangeElement_Electricity = 33,
    ChangeElement_Earth = 34,
    ChangeElement_Dark = 35,
    ChangeElement_Dragon = 36,
    DebugRefresh = 37,
    EPalVisualEffectID_MAX = 38,
}

---@enum EPalWalkableFloorAnglePriority
EPalWalkableFloorAnglePriority = {
    None = 0,
    Default = 1,
    Ride = 2,
    Action = 3,
    EPalWalkableFloorAnglePriority_MAX = 4,
}

---@enum EPalWazaCategory
EPalWazaCategory = {
    Melee = 0,
    Shot = 1,
    Support = 2,
    EPalWazaCategory_MAX = 3,
}

---@enum EPalWazaExecuteConditionType
EPalWazaExecuteConditionType = {
    None = 0,
    HPBelow = 1,
    EPalWazaExecuteConditionType_MAX = 2,
}

---@enum EPalWazaID
EPalWazaID = {
    None = 0,
    Human_Punch = 1,
    WorkAttack = 2,
    Throw = 3,
    Scratch = 4,
    EnergyShot = 5,
    Unique_Anubis_LowRoundKick = 6,
    Unique_Anubis_GroundPunch = 7,
    Unique_Anubis_Tackle = 8,
    Unique_Deer_PushupHorn = 9,
    HyperBeam = 10,
    PowerShot = 11,
    PowerBall = 12,
    Unique_Garm_Bite = 13,
    Intimidate = 14,
    Unique_Boar_Tackle = 15,
    Unique_PinkCat_CatPunch = 16,
    Unique_FlowerDinosaur_Whip = 17,
    Unique_SheepBall_Roll = 18,
    Unique_ChickenPal_ChickenPeck = 19,
    Unique_Gorilla_GroundPunch = 20,
    Unique_Grassmammoth_Earthquake = 21,
    AirCanon = 22,
    Unique_GrassPanda_MusclePunch = 23,
    Unique_RobinHood_BowSnipe = 24,
    Unique_Alpaca_Tackle = 25,
    Unique_KingAlpaca_BodyPress = 26,
    Unique_Werewolf_Scratch = 27,
    Unique_FengyunDeeper_CloudTempest = 28,
    Unique_Baphomet_SwallowKite = 29,
    Unique_HerculesBeetle_BeetleTackle = 30,
    Unique_HawkBird_Storm = 31,
    Unique_Eagle_GlidingNail = 32,
    SelfDestruct = 33,
    SelfDestruct_Bee = 34,
    SelfExplosion = 35,
    FireBlast = 36,
    Flamethrower = 37,
    FireBall = 38,
    FlareArrow = 39,
    FireSeed = 40,
    Unique_Horus_FlareBird = 41,
    FlareTornado = 42,
    Inferno = 43,
    Unique_FireKirin_Tackle = 44,
    Unique_AmaterasuWolf_FireCharge = 45,
    Unique_VolcanicMonster_MagmaAttack = 46,
    Unique_FlameBuffalo_FlameHorn = 47,
    Eruption = 48,
    FlameWall = 49,
    FlameFunnel = 50,
    WaterGun = 51,
    WaterWave = 52,
    HydroPump = 53,
    WaterBall = 54,
    TidalWave = 55,
    AquaJet = 56,
    BubbleShot = 57,
    AcidRain = 58,
    Unique_BluePlatypus_Toboggan = 59,
    WindCutter = 60,
    GrassTornado = 61,
    SolarBeam = 62,
    SeedMachinegun = 63,
    SeedMine = 64,
    RootAttack = 65,
    SpecialCutter = 66,
    Unique_QueenBee_SpinLance = 67,
    ThunderRain = 68,
    ThunderBall = 69,
    LineThunder = 70,
    CrossThunder = 71,
    ThreeThunder = 72,
    ElecWave = 73,
    Thunderbolt = 74,
    ThunderFunnel = 75,
    SpreadPulse = 76,
    LockonLaser = 77,
    LightningStrike = 78,
    Unique_ElecPanda_ElecScratch = 79,
    Unique_Kirin_LightningTackle = 80,
    IceMissile = 81,
    BlizzardLance = 82,
    SnowStorm = 83,
    IcicleThrow = 84,
    Unique_IceHorse_IceBladeAttack = 85,
    IceBlade = 86,
    SandTornado = 87,
    ThrowRock = 88,
    RockLance = 89,
    MudShot = 90,
    StoneShotgun = 91,
    Unique_DrillGame_ShellAttack = 92,
    DarkLaser = 93,
    DarkWave = 94,
    ShadowBall = 95,
    Psychokinesis = 96,
    PoisonShot = 97,
    GhostFlame = 98,
    Unique_DarkCrow_TelePoke = 99,
    DragonMeteor = 100,
    DragonBreath = 101,
    DragonWave = 102,
    DragonCanon = 103,
    Unique_FairyDragon_FairyTornado = 104,
    Funnel_DreamDemon = 105,
    Funnel_RaijinDaughter = 106,
    StardustArrow = 107,
    Tremor = 108,
    FrostBreath = 109,
    DiamondFall = 110,
    BeamSlicer = 111,
    Commet = 112,
    DarkBall = 113,
    DarkFog = 114,
    PoisonFog = 115,
    DarkLegion = 116,
    DarkCanon = 117,
    DarkArrow = 118,
    DarkPulse = 119,
    DarkTornado = 120,
    Apocalypse = 121,
    StarMine = 122,
    AirBlade = 123,
    HolyBlast = 124,
    RootLance = 125,
    LeafWind = 126,
    SeedBurst = 127,
    LineGeyser = 128,
    WallSplash = 129,
    TriSpark = 130,
    ThunderStorm = 131,
    SandTwister = 132,
    IcicleLine = 133,
    FrostBeam = 134,
    BlizzardFlower = 135,
    ThreeCommet = 136,
    CommetRain = 137,
    BlastCanon = 138,
    ChargeCanon = 139,
    RangeThunder = 140,
    Railbolt = 141,
    ShokeiLaser = 142,
    BubbleShower = 143,
    WaterBalloon = 144,
    ChaosLaser = 145,
    IciclePierce = 146,
    DoubleIcicleThrow = 147,
    IceAge = 148,
    RaidCutter = 149,
    WindEdge = 150,
    GrassTyphoon = 151,
    SeedShotgun = 152,
    FlareTwister = 153,
    TripleCannon = 154,
    TrisRing = 155,
    Unique_BirdDragon_FireBreath = 156,
    Unique_BlackMetalDragon_FirePunch = 157,
    Unique_DarkScorpion_Pierce = 158,
    Unique_GhostBeast_Tossin = 159,
    Unique_JetDragon_JumpBeam = 160,
    Unique_ThunderBird_ThunderStorm = 161,
    Unique_Yeti_SnowBall = 162,
    Unique_NaughtyCat_CatPress = 163,
    Unique_IceDeer_IceHorn = 164,
    Unique_KingBahamut_AirCrash = 165,
    Unique_Manticore_InfernoStrike = 166,
    Unique_SoldierBee_NeedleLance = 167,
    Unique_ThunderDog_InazumaShorai = 168,
    Unique_BlackCentaur_TwoSpearRushes = 169,
    Unique_BlackGriffon_TackleLaser = 170,
    Unique_SakuraSaurus_SideTackle = 171,
    Unique_ThunderDragonMan_ThunderSwordAttack = 172,
    Unique_RedArmorBird_TriplePeck = 173,
    Unique_CaptainPenguin_BodySlide = 174,
    Unique_Ronin_Iai = 175,
    Unique_GrassRabbitMan_GrassRoundKick = 176,
    Unique_SaintCentaur_OneSpearRushes = 177,
    Unique_Umihebi_WindingTackle = 178,
    Unique_WeaselDragon_FlyingTackle = 179,
    Unique_WhiteTiger_IceScratch = 180,
    Unique_Baphomet_Dark_DarkKite = 181,
    Unique_BirdDragon_Ice_IceBreath = 182,
    Unique_FireKirin_Dark_DarkTossin = 183,
    Unique_VolcanicMonster_Ice_IceAttack = 184,
    Unique_IceHorse_Dark_DarkBladeAttack = 185,
    Unique_Yeti_Grass_GrassBall = 186,
    Unique_GrassPanda_Electric_ElectricPunch = 187,
    Unique_NightLady_WarpBeam = 188,
    Unique_NightLady_WarpBeam_Straight = 189,
    Unique_NightLady_FlameNightmare = 190,
    Unique_MoonQueen_MoonBeam = 191,
    Unique_MoonQueen_MoonBlade = 192,
    Unique_KingBahamut_ArmSmash = 193,
    Unique_WingGolem_RoundCutter = 194,
    Unique_ScorpionMan_Uppercut = 195,
    Unique_FeatherOstrich_Tossin = 196,
    Unique_DarkAlien_JumpScractch = 197,
    Unique_SifuDog_Counter = 198,
    Unique_ThunderDragonMan_NumerousSwordAttack = 199,
    Unique_ElecPanda_GatlingAttack = 200,
    Unique_LilyQueen_LilyHealing = 201,
    Unique_LilyQueen_WindBarrier = 202,
    Unique_Horus_PerfectStorm = 203,
    Unique_BlackGriffon_TackleLaser2 = 204,
    Unique_MoonQueen_IceMoonBlade = 205,
    Unique_DarkMechaDragon_SetFunnel = 206,
    Unique_DarkMechaDragon_ConvergentBeam = 207,
    Unique_DarkMechaDragon_FunnelLaser = 208,
    Unique_DarkMechaDragon_BeamSlash = 209,
    Unique_DarkMechaDragon_WarpComet = 210,
    Unique_Umihebi_Fire_FireWindingTackle = 211,
    Unique_PurpleSpider_SpiderRaid = 212,
    Unique_MysteryMask_LifeSteal = 213,
    Unique_GrimGirl_BrutalMachete = 214,
    Unique_SnowTigerBeastman_TrampleSlash = 215,
    Unique_SnowTigerBeastman_SnowImpact = 216,
    Unique_WhiteShieldDragon_ShieldTackle = 217,
    Unique_NightBlueHorse_DeathStep = 218,
    Unique_BlueThunderHorse_FlashDash = 219,
    Unique_WhiteDeer_HolyPillar = 220,
    Unique_GoldenHorse_StoneDash = 221,
    Unique_WhiteTiger_Ground_IronScratch = 222,
    Unique_FengyunDeeper_Electric_ThunderTempest = 223,
    Unique_Werewolf_Ice_SnowScratch = 224,
    Unique_Horus_Water_AquaStorm = 225,
    Unique_AmaterasuWolf_Dark_DarkCharge = 226,
    PredatorBeam = 227,
    PredatorWave = 228,
    PredatorLockon = 229,
    RockBeat = 230,
    IceWall = 231,
    GravitySurge = 232,
    GhostMissile = 233,
    Unique_ZENITH_Warp = 234,
    Unique_ZENITH_Sermon = 235,
    Funnel_RaijinDaughter_Water = 236,
    BlueThunderHorse_PartnerSkill = 237,
    Reserve_84 = 238,
    Reserve_85 = 239,
    Reserve_86 = 240,
    Reserve_87 = 241,
    Reserve_88 = 242,
    Reserve_89 = 243,
    Reserve_90 = 244,
    Reserve_91 = 245,
    Reserve_92 = 246,
    Reserve_93 = 247,
    Reserve_94 = 248,
    Reserve_95 = 249,
    Reserve_96 = 250,
    Reserve_97 = 251,
    Reserve_98 = 252,
    Reserve_99 = 253,
    MAX = 254,
}

---@enum EPalWeaponType
EPalWeaponType = {
    None = 0,
    ThrowObject = 1,
    Handgun = 2,
    AssaultRifle = 3,
    Shotgun = 4,
    SniperRifle = 5,
    RocketLauncher = 6,
    MeleeWeapon = 7,
    Bow = 8,
    BowGun = 9,
    FlameThrower = 10,
    GatlingGun = 11,
    Liftup = 12,
    LaserRifle = 13,
    MissileLauncher = 14,
    GrenadeLauncher = 15,
    Katana = 16,
    MetalDetector = 17,
    GiantClub = 18,
    MAX = 19,
}

---@enum EPalWeatherConditionType
EPalWeatherConditionType = {
    Undefined = 0,
    Sun = 1,
    Cloud = 2,
    Rain = 3,
    Thunder = 4,
    Snow = 5,
    Fog = 6,
    Storm = 7,
    Snowstorm = 8,
    EPalWeatherConditionType_MAX = 9,
}

---@enum EPalWidgetBlueprintType
EPalWidgetBlueprintType = {
    Undefined = 0,
    Dialog = 1,
    MonsterDetail = 2,
    WorldMap = 3,
    ConvertItemDetail = 4,
    CharacterRankUp = 5,
    RecoverOtomo = 6,
    ItemChest = 7,
    WorkerRadialMenu = 8,
    FoodBox = 9,
    SelectItem_PlayerInventory = 10,
    PlayerStatusOperation = 11,
    PalStatusOperation = 12,
    MapObjectSecuritySetting = 13,
    PasswordSetting = 14,
    BaseCampWorkHard = 15,
    WorkSuitabilityPreference = 16,
    BaseCampWorkFixedAssignManage = 17,
    ItemChestPreference = 18,
    CutsceneOverlay = 19,
    MapObjectCommonCharacterContainer = 20,
    PickingGame = 21,
    ArenaPalSelect = 22,
    BaseCampItemDispenser = 23,
    ItemBoothTrade = 24,
    ItemBoothSale = 25,
    PalBoothTrade = 26,
    PalBoothSale = 27,
    EPalWidgetBlueprintType_MAX = 28,
}

---@enum EPalWidgetInputMode
EPalWidgetInputMode = {
    Default = 0,
    GameAndMenu = 1,
    Game = 2,
    Menu = 3,
    EPalWidgetInputMode_MAX = 4,
}

---@enum EPalWorkAssignOptionType
EPalWorkAssignOptionType = {
    HigherPriorityThanSleep = 0,
    EPalWorkAssignOptionType_MAX = 1,
}

---@enum EPalWorkAssignRequirementWorkerFilter
EPalWorkAssignRequirementWorkerFilter = {
    InSameMapObject = 0,
    EPalWorkAssignRequirementWorkerFilter_MAX = 1,
}

---@enum EPalWorkAssignRequirementWorkerPriority
EPalWorkAssignRequirementWorkerPriority = {
    Normal = 0,
    WorkSpeedASC = 1,
    WorkSpeedDESC = 2,
    EPalWorkAssignRequirementWorkerPriority_MAX = 3,
}

---@enum EPalWorkAssignType
EPalWorkAssignType = {
    None = 0,
    Work = 1,
    WorkAttack = 2,
    Defense = 3,
    EPalWorkAssignType_MAX = 4,
}

---@enum EPalWorkAssignableCheckResult
EPalWorkAssignableCheckResult = {
    WorkerEvent = 0,
    Dead = 1,
    Sleeping = 2,
    RecoverHungry = 3,
    NotSuitable = 4,
    NotSuitableTribeID = 5,
    NotSuitableSize = 6,
    NotAssignableOtomo = 7,
    NotAssignableBaseCampWorker = 8,
    NotValidIndividualCharacterParameter = 9,
    CannotReviveSelf = 10,
    NotExistsMapObject = 11,
    MapObjectEffect = 12,
    Enable = 13,
    EPalWorkAssignableCheckResult_MAX = 14,
}

---@enum EPalWorkAssignableFixedType
EPalWorkAssignableFixedType = {
    Both = 0,
    FreeOnly = 1,
    FixedOnly = 2,
    Cannot = 3,
    EPalWorkAssignableFixedType_MAX = 4,
}

---@enum EPalWorkBehaviourType
EPalWorkBehaviourType = {
    Undefined = 0,
    StackAmount = 1,
    Participate = 2,
    EPalWorkBehaviourType_MAX = 3,
}

---@enum EPalWorkDefenseCombatType
EPalWorkDefenseCombatType = {
    None = 0,
    Wait = 1,
    Gunner = 2,
    EPalWorkDefenseCombatType_MAX = 3,
}

---@enum EPalWorkProgressState
EPalWorkProgressState = {
    Init = 0,
    Workable = 1,
    NotWorkable = 2,
    Finish = 3,
    Dispose = 4,
    EPalWorkProgressState_MAX = 5,
}

---@enum EPalWorkRepairState
EPalWorkRepairState = {
    None = 0,
    PathFindByOwner = 1,
    PathFindByConnector = 2,
    ApproachToChest = 3,
    ApproachToOwner = 4,
    ApproachToConnectOwner = 5,
    InProgress = 6,
    EPalWorkRepairState_MAX = 7,
}

---@enum EPalWorkRequestResult
EPalWorkRequestResult = {
    Success = 0,
    FailedNotFoundBaseCamp = 1,
    FailedNotFoundOwnerMapObject = 2,
    FailedNotFoundWork = 3,
    FailedNotFoundWorkAssign = 4,
    FailedNotFoundWorkAssignLocation = 5,
    FailedDisableToAssignForAssignInfo = 6,
    FailedOverflowAssignCount = 7,
    FailedCharacterHandleMissing = 8,
    FailedCharacterParameterMissing = 9,
    FailedNotFoundCharacter = 10,
    FailedNotFoundCharacterAIController = 11,
    FailedNotMatchWorkType = 12,
    FailedNotWorkBase = 13,
    FailedNotSameWorker = 14,
    FailedNotFoundNetworkTransmitter = 15,
    FailedInvokeingInClientForServerInternalFunction = 16,
    FailedTransportNotExistDirector = 17,
    FailedTransportNotExistPathToMoveFor = 18,
    UnassignTargetWork = 19,
    EPalWorkRequestResult_MAX = 20,
}

---@enum EPalWorkSuitability
EPalWorkSuitability = {
    None = 0,
    EmitFlame = 1,
    Watering = 2,
    Seeding = 3,
    GenerateElectricity = 4,
    Handcraft = 5,
    Collection = 6,
    Deforest = 7,
    Mining = 8,
    OilExtraction = 9,
    ProductMedicine = 10,
    Cool = 11,
    Transport = 12,
    MonsterFarm = 13,
    Anyone = 14,
    MAX = 15,
}

---@enum EPalWorkTickResult
EPalWorkTickResult = {
    Continue = 0,
    WaitForWorkable = 1,
    Terminate = 2,
    EPalWorkTickResult_MAX = 3,
}

---@enum EPalWorkTransformType
EPalWorkTransformType = {
    Undefined = 0,
    Static = 1,
    MapObject = 2,
    Character = 3,
    EPalWorkTransformType_MAX = 4,
}

---@enum EPalWorkTransportItemType
EPalWorkTransportItemType = {
    TakeOut = 0,
    PutIn = 1,
    EPalWorkTransportItemType_MAX = 2,
}

---@enum EPalWorkType
EPalWorkType = {
    None = 0,
    CommonTemp = 1,
    ReviveCharacter = 2,
    Architecture = 3,
    RepairBuildObject = 4,
    FarmHarvest = 5,
    HarvestLevelObject = 6,
    TransportFoodItemInBaseCamp = 7,
    Seeding = 8,
    Watering = 9,
    Cooking = 10,
    TransportDisposableItemInBaseCamp = 11,
    ConvertItem = 12,
    ProductItem = 13,
    Smelting = 14,
    ProductMedicine = 15,
    TransportItemInBaseCamp = 16,
    CollectResourcePickable = 17,
    ProductResource_Deforest = 18,
    ProductResource_Mining = 19,
    ProductResource_Deforest_OnFacility = 20,
    ProductResource_Mining_OnFacility = 21,
    GenerateEnergy = 22,
    Ignition = 23,
    Defense = 24,
    BreedFarm = 25,
    MonsterFarm = 26,
    ExtinguishBurn = 27,
    Cool = 28,
    Watering_Farm = 29,
    DedicatedWork01 = 30,
    DedicatedWork02 = 31,
    DedicatedWork03 = 32,
    DedicatedWork04 = 33,
    DedicatedWork05 = 34,
    DedicatedWork06 = 35,
    DedicatedWork07 = 36,
    DedicatedWork08 = 37,
    DedicatedWork09 = 38,
    DedicatedWork10 = 39,
    LabResearch = 40,
    Attack = 41,
    CollectItemToStorage = 42,
    TransportItem = 43,
    CollectResource = 44,
    GrowupPromotion = 45,
    EPalWorkType_MAX = 46,
}

---@enum EPalWorkWorkerState
EPalWorkWorkerState = {
    None = 0,
    Reserve = 1,
    Working = 2,
    Leave = 3,
    EPalWorkWorkerState_MAX = 4,
}

---@enum EPalWorkWorkerWorkingState
EPalWorkWorkerWorkingState = {
    Wait = 0,
    ApproachTo = 1,
    Working = 2,
    WaitForWorkable = 3,
    EPalWorkWorkerWorkingState_MAX = 4,
}

---@enum EPalWorkableType
EPalWorkableType = {
    Illegal = 0,
    Progress = 1,
    CollectItem = 2,
    TransportItem = 3,
    TransportItemInBaseCamp = 4,
    ReviveCharacter = 5,
    CollectResource = 6,
    LevelObject = 7,
    Repair = 8,
    Defense = 9,
    BootUp = 10,
    OnlyJoin = 11,
    OnlyJoinAndWalkAround = 12,
    RemoveMapObjectEffect = 13,
    MonsterFarm = 14,
    DeforestFoliage = 15,
    LabResearch = 16,
    Booth = 17,
    EPalWorkableType_MAX = 18,
}

---@enum EPalWorkerRadialMenuResult
EPalWorkerRadialMenuResult = {
    Cancel = 0,
    Feed = 1,
    ShowDetail = 2,
    MoveToBox = 3,
    MoveToOtomo = 4,
    Pet = 5,
    EPalWorkerRadialMenuResult_MAX = 6,
}

---@enum EPalWorldBaseInfoSaveDataType
EPalWorldBaseInfoSaveDataType = {
    NoProblem = 0,
    NotExistBaseInfo = 1,
    EPalWorldBaseInfoSaveDataType_MAX = 2,
}

---@enum EPalWorldHUDWidgetBlueprintType
EPalWorldHUDWidgetBlueprintType = {
    Undefined = 0,
    ConvertItem = 1,
    ProductItem = 2,
    FarmCrop = 3,
    FarmBlockV2 = 4,
    BuildProgress = 5,
    LackElectricity = 6,
    RecoverPal = 7,
    HatchingPalEgg = 8,
    MultiHatchingPalEgg = 9,
    GenerateEnergy = 10,
    HeadupWantFood = 11,
    HeadupPossessItem = 12,
    HeadupInvader = 13,
    BossEntryWait = 14,
    BreedFarm = 15,
    MapObjectHP = 16,
    MapObjectMultiplayModifier = 17,
    CommonWorkRequirement = 18,
    LabResearch = 19,
    Expedition = 20,
    SkillFruitFarm = 21,
    EPalWorldHUDWidgetBlueprintType_MAX = 22,
}

---@enum EPalWorldMapType
EPalWorldMapType = {
    Normal = 0,
    RealtimeCapture = 1,
    EPalWorldMapType_MAX = 2,
}

---@enum EPalWorldSecurityLawTriggerType
EPalWorldSecurityLawTriggerType = {
    Undefined = 0,
    Item_Move = 1,
    Character_Damaged = 2,
    Character_Dead = 3,
    Area_Invasion = 4,
    EPalWorldSecurityLawTriggerType_MAX = 5,
}

---@enum EPlayerPlatform
EPlayerPlatform = {
    Null = 0,
    Epic = 1,
    Xbox = 2,
    PSN = 3,
    Nintendo = 4,
    Stadia = 5,
    Steam = 6,
    Google = 7,
    GooglePlay = 8,
    Apple = 9,
    AppleGameKit = 10,
    Samsung = 11,
    Oculus = 12,
    Tencent = 13,
    EPlayerPlatform_MAX = 14,
}

---@enum ERequestEmoteType
ERequestEmoteType = {
    Identical = 0,
    Specific = 1,
    Arbitrary = 2,
    ERequestEmoteType_MAX = 3,
}

---@enum ESequentialProcessState
ESequentialProcessState = {
    Init = 0,
    InProgress = 1,
    Complete = 2,
    Failed = 3,
    ESequentialProcessState_MAX = 4,
}

---@enum EWeaponAnimationPoseType
EWeaponAnimationPoseType = {
    None = 0,
    Stand = 1,
    Crouch = 2,
    Riding = 3,
    EWeaponAnimationPoseType_MAX = 4,
}

---@enum EWeaponAnimationType
EWeaponAnimationType = {
    None = 0,
    PullTrigger = 1,
    Aiming = 2,
    Shoot = 3,
    EWeaponAnimationType_MAX = 4,
}

---@enum EWeaponCoopType
EWeaponCoopType = {
    None = 0,
    RapidFireWeapon = 1,
    NearRangeWeapon = 2,
    FarRangeWeapon = 3,
    SupportWeapon = 4,
    EWeaponCoopType_MAX = 5,
}

---@enum EWeaponNotifyType
EWeaponNotifyType = {
    None = 0,
    Shoot = 1,
    ThrowRequest = 2,
    RequestReload = 3,
    ShootComplated = 4,
    EWeaponNotifyType_MAX = 5,
}

---@enum EWeaponPlaySoundType
EWeaponPlaySoundType = {
    None = 0,
    OnStartAim = 1,
    OnEndAim = 2,
    OnAttach = 3,
    OnDetach = 4,
    OnThrow = 5,
    EWeaponPlaySoundType_MAX = 6,
}

