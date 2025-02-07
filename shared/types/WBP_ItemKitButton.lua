---@meta

---@class UWBP_ItemKitButton_C : UUserWidget
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
---@field Item FF_ItemKitJsonRow
---@field ShowBorder boolean
---@field OnButtonClicked FWBP_ItemKitButton_COnButtonClicked
---@field OnButtonHovered FWBP_ItemKitButton_COnButtonHovered
---@field OnButtonUnhovered FWBP_ItemKitButton_COnButtonUnhovered
UWBP_ItemKitButton_C = {}

---@param ItemId FName
---@return boolean
function UWBP_ItemKitButton_C:DoesItemExist(ItemId) end
function UWBP_ItemKitButton_C:Validate() end
function UWBP_ItemKitButton_C:SetText() end
---@param Visible boolean
function UWBP_ItemKitButton_C:SetBorderVisible(Visible) end
---@param IsDesignTime boolean
function UWBP_ItemKitButton_C:PreConstruct(IsDesignTime) end
function UWBP_ItemKitButton_C:Construct() end
function UWBP_ItemKitButton_C:BndEvt__WBP_Button_Button_87_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UWBP_ItemKitButton_C:BndEvt__WBP_Button_Button_87_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UWBP_ItemKitButton_C:BndEvt__WBP_Button_Button_87_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UWBP_ItemKitButton_C:ExecuteUbergraph_WBP_ItemKitButton(EntryPoint) end
function UWBP_ItemKitButton_C:OnButtonUnhovered__DelegateSignature() end
---@param Button UWBP_ItemKitButton_C
function UWBP_ItemKitButton_C:OnButtonHovered__DelegateSignature(Button) end
---@param Button UWBP_ItemKitButton_C
function UWBP_ItemKitButton_C:OnButtonClicked__DelegateSignature(Button) end


