---@meta

---@class UWBP_Button_C : UUserWidget
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
---@field OnButtonClicked FWBP_Button_COnButtonClicked
---@field ShowBorder boolean
---@field OnButtonHovered FWBP_Button_COnButtonHovered
---@field OnButtonUnhovered FWBP_Button_COnButtonUnhovered
---@field Tooltip_Text FText
UWBP_Button_C = {}

---@param Text FString
function UWBP_Button_C:SetText(Text) end
---@param Visible boolean
function UWBP_Button_C:SetBorderVisible(Visible) end
---@param IsDesignTime boolean
function UWBP_Button_C:PreConstruct(IsDesignTime) end
function UWBP_Button_C:Construct() end
function UWBP_Button_C:BndEvt__WBP_Button_Button_87_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UWBP_Button_C:BndEvt__WBP_Button_Button_87_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UWBP_Button_C:BndEvt__WBP_Button_Button_87_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UWBP_Button_C:ExecuteUbergraph_WBP_Button(EntryPoint) end
function UWBP_Button_C:OnButtonUnhovered__DelegateSignature() end
---@param Button UWBP_Button_C
function UWBP_Button_C:OnButtonHovered__DelegateSignature(Button) end
function UWBP_Button_C:OnButtonClicked__DelegateSignature() end


