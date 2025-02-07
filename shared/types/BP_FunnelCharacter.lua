---@meta

---@class ABP_FunnelCharacter_C : APalFunnelCharacter
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PalNavigationInvoker UPalNavigationInvokerComponent
---@field PalFacial UPalFacialComponent
ABP_FunnelCharacter_C = {}

function ABP_FunnelCharacter_C:SetLocationNearTrainer() end
function ABP_FunnelCharacter_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_FunnelCharacter_C:ReceiveTick(DeltaSeconds) end
---@param NoEffect boolean
function ABP_FunnelCharacter_C:OnActive(NoEffect) end
---@param NoEffect boolean
function ABP_FunnelCharacter_C:OnInactive(NoEffect) end
---@param EntryPoint int32
function ABP_FunnelCharacter_C:ExecuteUbergraph_BP_FunnelCharacter(EntryPoint) end


