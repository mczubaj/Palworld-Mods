---@meta

---@class UWBP_TabButton_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BGBorder UImage
---@field Button_87 UButton
---@field ButtonBG UImage
---@field FocusFrame UOverlay
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_3 UImage
---@field TextBlock_128 UTextBlock
---@field Text FString
---@field OnButtonClicked FWBP_TabButton_COnButtonClicked
---@field ShowBorder boolean
---@field IsSelected boolean
UWBP_TabButton_C = {}

---@param IsSelected boolean
function UWBP_TabButton_C:SetSelected(IsSelected) end
---@param Visible boolean
function UWBP_TabButton_C:SetBorderVisible(Visible) end
---@param IsDesignTime boolean
function UWBP_TabButton_C:PreConstruct(IsDesignTime) end
function UWBP_TabButton_C:Construct() end
function UWBP_TabButton_C:BndEvt__WBP_Button_Button_87_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UWBP_TabButton_C:BndEvt__WBP_Button_Button_87_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UWBP_TabButton_C:BndEvt__WBP_Button_Button_87_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UWBP_TabButton_C:ExecuteUbergraph_WBP_TabButton(EntryPoint) end
function UWBP_TabButton_C:OnButtonClicked__DelegateSignature() end


