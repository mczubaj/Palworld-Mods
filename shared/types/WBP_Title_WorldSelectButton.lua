---@meta

---@class UWBP_Title_WorldSelectButton_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Anm_NormalToFocus UWidgetAnimation
---@field Text_Main UBP_PalTextBlock_C
---@field WBP_PalInvisibleButton UWBP_PalInvisibleButton_C
---@field OnClicked FWBP_Title_WorldSelectButton_COnClicked
---@field MsgID FDataTableRowHandle
UWBP_Title_WorldSelectButton_C = {}

function UWBP_Title_WorldSelectButton_C:OnInitialized() end
---@param Button UCommonButtonBase
function UWBP_Title_WorldSelectButton_C:BndEvt__WBP_Title_WorldSelectButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end
---@param Button UCommonButtonBase
function UWBP_Title_WorldSelectButton_C:BndEvt__WBP_Title_WorldSelectButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end
---@param Button UCommonButtonBase
function UWBP_Title_WorldSelectButton_C:BndEvt__WBP_Title_WorldSelectButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(Button) end
---@param EntryPoint int32
function UWBP_Title_WorldSelectButton_C:ExecuteUbergraph_WBP_Title_WorldSelectButton(EntryPoint) end
function UWBP_Title_WorldSelectButton_C:OnClicked__DelegateSignature() end


