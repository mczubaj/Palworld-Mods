---@meta

---@class AModActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field ModAuthor FString
---@field ModDescription FString
---@field ModVersion FString
AModActor_C = {}

function AModActor_C:PostBeginPlay() end
---@param Message FString
function AModActor_C:PrintToModLoader(Message) end
---@param DeltaSeconds float
function AModActor_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function AModActor_C:ExecuteUbergraph_ModActor(EntryPoint) end


