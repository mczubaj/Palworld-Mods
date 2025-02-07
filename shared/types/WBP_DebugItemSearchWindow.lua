---@meta

---@class UWBP_DebugItemSearchWindow_C : UPalUserWidgetOverlayUI
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Image_27 UImage
---@field Image_56 UImage
---@field SpinBox_37 USpinBox
---@field WBP_IngameMenu_ItemSearchList UWBP_IngameMenu_ItemSearchList_C
---@field WBP_Menu_btn UWBP_Menu_btn_C
---@field LegalItemInfos TArray<FPalItemAndNum>
---@field LegalItemIds TArray<FName>
UWBP_DebugItemSearchWindow_C = {}

function UWBP_DebugItemSearchWindow_C:OnCancelAction() end
---@param Slot UWBP_PalItemSlotButtonBase_C
---@param PressType EPalItemSlotPressType
function UWBP_DebugItemSearchWindow_C:BndEvt__WBP_DebugItemSearchWindow_WBP_IngameMenu_ItemSearchList_K2Node_ComponentBoundEvent_0_OnRightClickSlot__DelegateSignature(Slot, PressType) end
function UWBP_DebugItemSearchWindow_C:OnSetup() end
function UWBP_DebugItemSearchWindow_C:BndEvt__WBP_DebugItemSearchWindow_WBP_Menu_btn_K2Node_ComponentBoundEvent_1_OnButtonClicked__DelegateSignature() end
---@param EntryPoint int32
function UWBP_DebugItemSearchWindow_C:ExecuteUbergraph_WBP_DebugItemSearchWindow(EntryPoint) end


