---@meta

---@class UWBP_KitTargetWindow_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Border UImage
---@field Button_390 UButton
---@field CheckBox_1 UCheckBox
---@field ChooseTargetContainer UHorizontalBox
---@field Image UImage
---@field Image_1 UImage
---@field Image_64 UImage
---@field Image_510 UImage
---@field PlayerListContainer UScrollBox
---@field TargetContainer UHorizontalBox
---@field TargetListContainer UVerticalBox
---@field TitleText UTextBlock
---@field TitleText_2 UTextBlock
---@field WBP_Button UWBP_Button_C
---@field WBP_Button_1 UWBP_Button_C
---@field WBP_Button_2 UWBP_Button_C
---@field OnRequestPlayerList FWBP_KitTargetWindow_COnRequestPlayerList
---@field OnError FWBP_KitTargetWindow_COnError
---@field OnConfirm FWBP_KitTargetWindow_COnConfirm
---@field Items TArray<FF_ItemKitItemData>
---@field KitName FString
---@field ChosenTargets TArray<FString>
UWBP_KitTargetWindow_C = {}

---@param bIsSelected boolean
---@param PlayerName FString
function UWBP_KitTargetWindow_C:OnPlayerSelectionChanged(bIsSelected, PlayerName) end
function UWBP_KitTargetWindow_C:ResetSelectedPlayers() end
function UWBP_KitTargetWindow_C:ReobtainFocus() end
---@param NewPlayerList TArray<FString>
function UWBP_KitTargetWindow_C:OnUpdatePlayerList(NewPlayerList) end
function UWBP_KitTargetWindow_C:SetMax() end
function UWBP_KitTargetWindow_C:Close() end
---@param KitName FString
---@param Items TArray<FF_ItemKitItemData>
function UWBP_KitTargetWindow_C:Open(KitName, Items) end
function UWBP_KitTargetWindow_C:Construct() end
function UWBP_KitTargetWindow_C:BndEvt__WBP_AmountSelection_WBP_Button_K2Node_ComponentBoundEvent_0_OnButtonClicked__DelegateSignature() end
function UWBP_KitTargetWindow_C:BndEvt__WBP_AmountSelection_WBP_Button_1_K2Node_ComponentBoundEvent_1_OnButtonClicked__DelegateSignature() end
function UWBP_KitTargetWindow_C:BndEvt__WBP_AmountSelection_Button_390_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
---@param bIsChecked boolean
function UWBP_KitTargetWindow_C:BndEvt__WBP_AmountSelection_CheckBox_1_K2Node_ComponentBoundEvent_3_OnCheckBoxComponentStateChanged__DelegateSignature(bIsChecked) end
function UWBP_KitTargetWindow_C:BndEvt__WBP_AmountSelection_WBP_Button_2_K2Node_ComponentBoundEvent_4_OnButtonClicked__DelegateSignature() end
---@param Message FString
function UWBP_KitTargetWindow_C:PrintToModLoader(Message) end
---@param EntryPoint int32
function UWBP_KitTargetWindow_C:ExecuteUbergraph_WBP_KitTargetWindow(EntryPoint) end
---@param Message FText
function UWBP_KitTargetWindow_C:OnError__DelegateSignature(Message) end
---@param Items TArray<FF_ItemKitItemData>
---@param targetData FFTargetData
function UWBP_KitTargetWindow_C:OnConfirm__DelegateSignature(Items, targetData) end
function UWBP_KitTargetWindow_C:OnRequestPlayerList__DelegateSignature() end


