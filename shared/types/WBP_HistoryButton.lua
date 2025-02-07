---@meta

---@class UWBP_HistoryButton_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Vanish UWidgetAnimation
---@field Delete UWidgetAnimation
---@field BGBorder UImage
---@field Button_87 UButton
---@field ButtonBG UImage
---@field ButtonBG_Delete UImage
---@field FocusFrame UOverlay
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_3 UImage
---@field Image_127 UImage
---@field TextBlock UTextBlock
---@field TextBlock_1 UTextBlock
---@field TextBlock_128 UTextBlock
---@field OnHovered FWBP_HistoryButton_COnHovered
---@field Data FPalIndividualCharacterSaveParameter
---@field OnUnhovered FWBP_HistoryButton_COnUnhovered
---@field OnClicked FWBP_HistoryButton_COnClicked
---@field OnDeleteRequested FWBP_HistoryButton_COnDeleteRequested
---@field bIsDeleting boolean
---@field bIsDeleted boolean
UWBP_HistoryButton_C = {}

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UWBP_HistoryButton_C:OnMouseButtonUp(MyGeometry, MouseEvent) end
function UWBP_HistoryButton_C:StopAnim() end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UWBP_HistoryButton_C:OnMouseButtonDown(MyGeometry, MouseEvent) end
---@return FText
function UWBP_HistoryButton_C:GetText() end
function UWBP_HistoryButton_C:Finished_29A56CD14FF17E82D01827B5995D0863() end
function UWBP_HistoryButton_C:Finished_C1471A7C4DE716BF7D9CE49C505DFDCE() end
---@param Loaded UObject
function UWBP_HistoryButton_C:OnLoaded_848D22AE4AF0383BD758FFB1975D56D7(Loaded) end
function UWBP_HistoryButton_C:Construct() end
function UWBP_HistoryButton_C:BndEvt__WBP_HistoryButton_Button_87_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UWBP_HistoryButton_C:BndEvt__WBP_HistoryButton_Button_87_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
function UWBP_HistoryButton_C:BndEvt__WBP_HistoryButton_Button_87_K2Node_ComponentBoundEvent_3_OnButtonHoverEvent__DelegateSignature() end
function UWBP_HistoryButton_C:PlayAnim() end
---@param Message FString
function UWBP_HistoryButton_C:PrintToModLoader(Message) end
---@param EntryPoint int32
function UWBP_HistoryButton_C:ExecuteUbergraph_WBP_HistoryButton(EntryPoint) end
---@param Button UWBP_HistoryButton_C
function UWBP_HistoryButton_C:OnDeleteRequested__DelegateSignature(Button) end
---@param Data FPalIndividualCharacterSaveParameter
function UWBP_HistoryButton_C:OnClicked__DelegateSignature(Data) end
---@param Button UWBP_HistoryButton_C
function UWBP_HistoryButton_C:OnUnhovered__DelegateSignature(Button) end
---@param Button UWBP_HistoryButton_C
function UWBP_HistoryButton_C:OnHovered__DelegateSignature(Button) end


