---@meta

---@class AModActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field NewVar UModUI_C
---@field NewVar_0 boolean
---@field Message FString
---@field ModAuthor FString
---@field ModDescription FString
---@field ModButtons TArray<FString>
---@field ['As Pal Player Controller'] APalPlayerController
---@field ['As Pal Player Input'] UPalPlayerInput
---@field ['As Pal Player Controller_0'] APalPlayerController
---@field ['As Pal Player Character'] APalPlayerCharacter
---@field ['As Player Controller'] APlayerController
---@field ['As Movement Component'] UMovementComponent
---@field ['As Pal Player State'] APalPlayerState
---@field ['As Pal Local Player'] UPalLocalPlayer
---@field ['As Pal Player Manager'] UPalPlayerManager
---@field ['As Player Controller_0'] APlayerController
---@field ['As Pressed'] UInputTriggerPressed
---@field ['As Pal Player Character_0'] APalPlayerCharacter
---@field ['As Character Movement Component'] UCharacterMovementComponent
---@field ['As Pal Character Movement Component'] UPalCharacterMovementComponent
---@field ['As Pal Character Movement Component_0'] UPalCharacterMovementComponent
---@field ['As Pal Character'] APalCharacter
---@field ['As Pal Character_0'] APalCharacter
---@field ['As Pal Character Movement Component_1'] UPalCharacterMovementComponent
---@field ['As Pal Character_1'] APalCharacter
---@field ['Character Movement'] UCharacterMovementComponent
---@field ['As Pal Character Movement Component_2'] UPalCharacterMovementComponent
---@field backwards boolean
---@field ['Struct Out'] FKeyEvent
---@field ['Otomo Pal'] APalCharacter
---@field modhandler ABP_Autorunhandler_C
AModActor_C = {}

function AModActor_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function AModActor_C:ReceiveTick(DeltaSeconds) end
---@param AxisValue float
function AModActor_C:InpAxisEvt_MoveForward_K2Node_InputAxisEvent_0(AxisValue) end
---@param EntryPoint int32
function AModActor_C:ExecuteUbergraph_ModActor(EntryPoint) end


