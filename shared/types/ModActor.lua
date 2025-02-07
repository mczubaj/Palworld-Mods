---@meta

---@class AModActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field ModAuthor FString
---@field ModDescription FString
---@field ModVersion FString
AModActor_C = {}

function AModActor_C:PostBeginPlay() end
---@param EntryPoint int32
function AModActor_C:ExecuteUbergraph_ModActor(EntryPoint) end


