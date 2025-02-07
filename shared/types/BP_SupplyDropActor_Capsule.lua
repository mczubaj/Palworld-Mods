---@meta

---@class ABP_SupplyDropActor_Capsule_C : APalSupplyDropActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Cylinder UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
ABP_SupplyDropActor_Capsule_C = {}

function ABP_SupplyDropActor_Capsule_C:ReceiveBeginPlay() end
function ABP_SupplyDropActor_Capsule_C:OnLanded_BP() end
---@param EntryPoint int32
function ABP_SupplyDropActor_Capsule_C:ExecuteUbergraph_BP_SupplyDropActor_Capsule(EntryPoint) end


