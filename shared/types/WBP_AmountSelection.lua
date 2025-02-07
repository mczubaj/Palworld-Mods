---@meta

---@class UWBP_AmountSelection_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AmountContainer UHorizontalBox
---@field Border UImage
---@field Button_390 UButton
---@field CheckBox_1 UCheckBox
---@field ChooseTargetContainer UHorizontalBox
---@field Image UImage
---@field Image_1 UImage
---@field Image_64 UImage
---@field Image_510 UImage
---@field ItemNameText UTextBlock
---@field PlayerListContainer UScrollBox
---@field SpinBox_113 USpinBox
---@field TargetContainer UHorizontalBox
---@field TargetListContainer UVerticalBox
---@field TitleText UTextBlock
---@field TitleText_2 UTextBlock
---@field WBP_Button UWBP_Button_C
---@field WBP_Button_1 UWBP_Button_C
---@field WBP_Button_2 UWBP_Button_C
---@field Max int32
---@field OnRequestPlayerList FWBP_AmountSelection_COnRequestPlayerList
---@field ChosenTargets TArray<FString>
---@field OnError FWBP_AmountSelection_COnError
---@field OnConfirm FWBP_AmountSelection_COnConfirm
UWBP_AmountSelection_C = {}

---@param bIsSelected boolean
---@param PlayerName FString
function UWBP_AmountSelection_C:OnPlayerSelectionChanged(bIsSelected, PlayerName) end
function UWBP_AmountSelection_C:ResetSelectedPlayers() end
function UWBP_AmountSelection_C:ReobtainFocus() end
---@param NewPlayerList TArray<FString>
function UWBP_AmountSelection_C:OnUpdatePlayerList(NewPlayerList) end
function UWBP_AmountSelection_C:SetMax() end
function UWBP_AmountSelection_C:Close() end
---@param MaxStackSize int32
---@param NameOfItem FText
function UWBP_AmountSelection_C:Open(MaxStackSize, NameOfItem) end
function UWBP_AmountSelection_C:Construct() end
function UWBP_AmountSelection_C:BndEvt__WBP_AmountSelection_WBP_Button_K2Node_ComponentBoundEvent_0_OnButtonClicked__DelegateSignature() end
function UWBP_AmountSelection_C:BndEvt__WBP_AmountSelection_WBP_Button_1_K2Node_ComponentBoundEvent_1_OnButtonClicked__DelegateSignature() end
function UWBP_AmountSelection_C:BndEvt__WBP_AmountSelection_Button_390_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
---@param bIsChecked boolean
function UWBP_AmountSelection_C:BndEvt__WBP_AmountSelection_CheckBox_1_K2Node_ComponentBoundEvent_3_OnCheckBoxComponentStateChanged__DelegateSignature(bIsChecked) end
function UWBP_AmountSelection_C:BndEvt__WBP_AmountSelection_WBP_Button_2_K2Node_ComponentBoundEvent_4_OnButtonClicked__DelegateSignature() end
---@param Message FString
function UWBP_AmountSelection_C:PrintToModLoader(Message) end
---@param EntryPoint int32
function UWBP_AmountSelection_C:ExecuteUbergraph_WBP_AmountSelection(EntryPoint) end
---@param Message FText
function UWBP_AmountSelection_C:OnError__DelegateSignature(Message) end
---@param Amount int32
---@param targetData FFTargetData
function UWBP_AmountSelection_C:OnConfirm__DelegateSignature(Amount, targetData) end
function UWBP_AmountSelection_C:OnRequestPlayerList__DelegateSignature() end


