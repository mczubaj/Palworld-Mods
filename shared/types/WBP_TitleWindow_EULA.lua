---@meta

---@class UWBP_TitleWindow_EULA_C : UPalUserWidgetOverlayUI
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EULAText UBP_PalRichTextBlock_C
---@field WBP_CommonButton UWBP_CommonButton_C
---@field WBP_Menu_btn UWBP_Menu_btn_C
---@field DefaultEULA FText
UWBP_TitleWindow_EULA_C = {}

---@return UWidget
function UWBP_TitleWindow_EULA_C:BP_GetDesiredFocusTarget() end
function UWBP_TitleWindow_EULA_C:Construct() end
function UWBP_TitleWindow_EULA_C:BndEvt__WBP_WebBrowserTest_WBP_Menu_btn_K2Node_ComponentBoundEvent_0_OnButtonClicked__DelegateSignature() end
function UWBP_TitleWindow_EULA_C:BndEvt__WBP_WebBrowser_News_WBP_CommonButton_K2Node_ComponentBoundEvent_1_OnClicked__DelegateSignature() end
---@param EntryPoint int32
function UWBP_TitleWindow_EULA_C:ExecuteUbergraph_WBP_TitleWindow_EULA(EntryPoint) end


