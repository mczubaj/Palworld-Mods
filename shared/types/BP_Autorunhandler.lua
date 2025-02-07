---@meta

---@class ABP_Autorunhandler_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field Autorun boolean
---@field KeyBindCancelAutorun boolean
ABP_Autorunhandler_C = {}

function ABP_Autorunhandler_C:KeyBindPressed() end
---@param Key FKey
function ABP_Autorunhandler_C:InpActEvt_W_K2Node_InputKeyEvent_1(Key) end
---@param Key FKey
function ABP_Autorunhandler_C:InpActEvt_S_K2Node_InputKeyEvent_0(Key) end
---@param DeltaSeconds float
function ABP_Autorunhandler_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_Autorunhandler_C:ExecuteUbergraph_BP_Autorunhandler(EntryPoint) end


