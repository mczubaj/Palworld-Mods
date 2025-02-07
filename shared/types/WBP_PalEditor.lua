---@meta

---@class UWBP_PalEditor_C : UPalUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ActiveSkillList UVerticalBox
---@field Border UImage
---@field Border_1 UImage
---@field Border_2 UImage
---@field Button UButton
---@field Button_1 UButton
---@field Button_113 UButton
---@field Button_157 UButton
---@field Button_184 UButton
---@field CheckBox_1 UCheckBox
---@field CheckBox_Capture UCheckBox
---@field EditableTextBox_488 UEditableTextBox
---@field FocusFrame UOverlay
---@field FocusFrame_1 UOverlay
---@field FocusFrame_2 UOverlay
---@field GenderIcon UImage
---@field HistoryList UScrollBox
---@field HistoryWindow UOverlay
---@field HistoryWindowInner UVerticalBox
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_3 UImage
---@field Image_4 UImage
---@field Image_5 UImage
---@field Image_6 UImage
---@field Image_7 UImage
---@field Image_8 UImage
---@field Image_9 UImage
---@field Image_10 UImage
---@field Image_11 UImage
---@field Image_12 UImage
---@field Image_13 UImage
---@field Image_14 UImage
---@field Image_15 UImage
---@field Image_16 UImage
---@field Image_64 UImage
---@field MaxHPText UTextBlock
---@field PassiveContainer UVerticalBox
---@field PassiveMainContainer UVerticalBox
---@field ShuffleIcon UImage
---@field ShuffleIcon_1 UImage
---@field SkillListMainList UVerticalBox
---@field SpinBox USpinBox
---@field SpinBox_1 USpinBox
---@field SpinBox_2 USpinBox
---@field SpinBox_3 USpinBox
---@field SpinBox_4 USpinBox
---@field SpinBox_5 USpinBox
---@field SpinBox_6 USpinBox
---@field SpinBox_7 USpinBox
---@field SpinBox_8 USpinBox
---@field SpinBox_9 USpinBox
---@field SpinBox_10 USpinBox
---@field SpinBox_13 USpinBox
---@field SpinBox_14 USpinBox
---@field SpinBox_15 USpinBox
---@field SpinBox_16 USpinBox
---@field SpinBox_147 USpinBox
---@field TemplateList UScrollBox
---@field TemplateWindow UOverlay
---@field TemplateWindowInner UVerticalBox
---@field UpgradesContainer UVerticalBox
---@field WazaAvailableList UListView
---@field WazaAvailablePage UVerticalBox
---@field WazaMasteredList UListView
---@field WazaMasteredPage UVerticalBox
---@field WBP_Button UWBP_Button_C
---@field WBP_Button_1 UWBP_Button_C
---@field WBP_Button_2 UWBP_Button_C
---@field WBP_Button_3 UWBP_Button_C
---@field WBP_Button_4 UWBP_Button_C
---@field WBP_Button_5 UWBP_Button_C
---@field WBP_Button_6 UWBP_Button_C
---@field WBP_Button_7 UWBP_Button_C
---@field WBP_Button_8 UWBP_Button_C
---@field WBP_Button_11 UWBP_Button_C
---@field WBP_Button_299 UWBP_Button_C
---@field WBP_EmptyPassiveSkill UWBP_EmptyPassiveSkill_C
---@field WBP_EmptySkill UWBP_EmptySkill_C
---@field WBP_PalCharacterInfo UWBP_PalCharacterInfo_C
---@field WBP_PassiveList_101 UWBP_PassiveList_C
---@field WBP_Tooltip UWBP_Tooltip_C
---@field WidgetSwitcher_1001 UWidgetSwitcher
---@field CharacterParams FPalIndividualCharacterSaveParameter
---@field SelectedID FName
---@field SelectedName FText
---@field OnFinish FWBP_PalEditor_COnFinish
---@field CurrentlySelectedPassiveSlot UWBP_PassiveSkill_C
---@field Gender EPalGenderType
---@field WazaList UWBP_PalWazaList_C
---@field passiveList UWBP_PassiveList_C
---@field bAllowUniqueAbilitiesOnAnyone boolean
---@field HistoryComponent UBP_PalEditHistoryComponent_C
---@field CurrentParams FPalIndividualCharacterSaveParameter
---@field PassiveSlots TArray<UWBP_PassiveSkill_C>
---@field ActiveSkillSlots TArray<UWBP_ActiveSkill_C>
---@field bDisableEvents boolean
---@field bIsTooltipVisible boolean
---@field EscapeHandle FPalUIActionBindData
---@field ModVersion FString
---@field SaveObject UCreativeMenuSaveObject_C
---@field AllWazaDataArray TArray<UCreativeMenu_WazaData_C>
---@field AllWazaDataMap TMap<EPalWazaID, UCreativeMenu_WazaData_C>
---@field AvailableWazaDataArray TArray<UCreativeMenu_WazaData_C>
---@field MasteredWazaDataArray TArray<UCreativeMenu_WazaData_C>
---@field EquippedWazaDataArray TArray<UCreativeMenu_WazaData_C>
---@field SelectedActiveSkillSlot UWBP_ActiveSkill_C
---@field CurrentActiveSkillIndex int32
---@field bIsHealthOverflowing boolean
---@field bShouldObtainAsEgg boolean
---@field DisabledWaza TArray<EPalWazaID>
---@field SelectedWazaList TArray<EPalWazaID>
---@field CurrentPassiveIndex int32
UWBP_PalEditor_C = {}

function UWBP_PalEditor_C:SyncPassives() end
function UWBP_PalEditor_C:ClearPassives() end
---@param passiveName FName
function UWBP_PalEditor_C:OnPassiveUnequip(passiveName) end
---@param Button UWBP_PassiveSkill_C
---@param ID FName
function UWBP_PalEditor_C:OnPassiveSlotClick(Button, ID) end
function UWBP_PalEditor_C:SetupPassiveButtons() end
function UWBP_PalEditor_C:CreateExtraPassiveButton() end
function UWBP_PalEditor_C:SetupSkillButtons() end
function UWBP_PalEditor_C:CreateExtraSkillButton() end
---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UWBP_PalEditor_C:OnKeyUp(MyGeometry, InKeyEvent) end
---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UWBP_PalEditor_C:OnKeyDown(MyGeometry, InKeyEvent) end
function UWBP_PalEditor_C:HideSideBars() end
function UWBP_PalEditor_C:BackToMain() end
function UWBP_PalEditor_C:UpdateMaxHP() end
---@param SpinBox USpinBox
---@param MaxValue double
function UWBP_PalEditor_C:SetSpinBoxMaxValue(SpinBox, MaxValue) end
---@return int32
function UWBP_PalEditor_C:GetMaxUpgradeRank() end
---@param Data FCreativeMenu_WazaStruct
function UWBP_PalEditor_C:OnSkillUnhovered(Data) end
---@param Data FCreativeMenu_WazaStruct
function UWBP_PalEditor_C:OnSkillHovered(Data) end
function UWBP_PalEditor_C:OnSkillSlotUnhovered() end
---@param ID EPalWazaID
function UWBP_PalEditor_C:OnSkillSlotHovered(ID) end
---@param ID FName
function UWBP_PalEditor_C:SetCharacterID(ID) end
---@param OldID FName
---@param NewID FName
function UWBP_PalEditor_C:OnCharacterIDChanged(OldID, NewID) end
---@param LogText FText
function UWBP_PalEditor_C:Log(LogText) end
function UWBP_PalEditor_C:RandomizePassives() end
function UWBP_PalEditor_C:RandomizeIVs() end
---@param WazaString FString
---@return TArray<EPalWazaID>
function UWBP_PalEditor_C:WazaStringToArray(WazaString) end
---@param PassiveString FString
---@return TArray<FName>
function UWBP_PalEditor_C:PassiveStringToArray(PassiveString) end
---@param Element EPalElementType
---@param Icon TSoftObjectPtr<UTexture2D>
function UWBP_PalEditor_C:GetElementIcon(Element, Icon) end
---@param Array TArray<EPalWazaID>
---@param Output_Get FString
function UWBP_PalEditor_C:GetStringFromWazas(Array, Output_Get) end
---@return FString
function UWBP_PalEditor_C:GetStringFromPassiveButtons() end
---@param ByteArray TArray<uint8>
---@return TArray<EPalWazaID>
function UWBP_PalEditor_C:GetWazaArrayFromByteArray(ByteArray) end
---@param Data FPalIndividualCharacterSaveParameter
function UWBP_PalEditor_C:OnPresetSelected(Data) end
---@param Button UWBP_HistoryButton_C
function UWBP_PalEditor_C:OnDeleteHistoryEntry(Button) end
---@param Button UWBP_HistoryButton_C
function UWBP_PalEditor_C:OnHistoryEntryUnhovered(Button) end
---@param Button UWBP_HistoryButton_C
function UWBP_PalEditor_C:OnHistoryEntryHovered(Button) end
---@param Button UWBP_HistoryButton_C
function UWBP_PalEditor_C:OnDeleteTemplateEntry(Button) end
---@param Button UWBP_HistoryButton_C
function UWBP_PalEditor_C:OnTemplateEntryUnhovered(Button) end
---@param Button UWBP_HistoryButton_C
function UWBP_PalEditor_C:OnTemplateEntryHovered(Button) end
---@param StringArray TArray<FString>
---@return FString
function UWBP_PalEditor_C:BuildSettingsString(StringArray) end
---@param String FString
---@return boolean
function UWBP_PalEditor_C:ParseStringToParam(String) end
---@param Param FPalIndividualCharacterSaveParameter
function UWBP_PalEditor_C:ParseParamToString(Param) end
function UWBP_PalEditor_C:SnapTooltipToCursor() end
function UWBP_PalEditor_C:HideTooltip() end
---@param Title FText
---@param Content FText
function UWBP_PalEditor_C:ShowGeneralTooltip(Title, Content) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UWBP_PalEditor_C:OnMouseMove(MyGeometry, MouseEvent) end
---@param Gender EPalGenderType
function UWBP_PalEditor_C:SetGender(Gender) end
function UWBP_PalEditor_C:LoadTemplates() end
function UWBP_PalEditor_C:LoadHistory() end
function UWBP_PalEditor_C:Close() end
---@param bCaptureInstantly boolean
---@param bShouldObtainAsEgg boolean
---@param SpawnAmount int32
function UWBP_PalEditor_C:Finish(bCaptureInstantly, bShouldObtainAsEgg, SpawnAmount) end
function UWBP_PalEditor_C:SetupWaza() end
function UWBP_PalEditor_C:SetupPassives() end
function UWBP_PalEditor_C:SetupMasteredSkills() end
function UWBP_PalEditor_C:SetupAvailableSkills() end
function UWBP_PalEditor_C:SetupActiveSkills() end
function UWBP_PalEditor_C:SetupBaseStats() end
function UWBP_PalEditor_C:SetupEvents() end
function UWBP_PalEditor_C:SetupButtons() end
---@param ID FName
---@param Out_Row FPalCharacterParameterDatabaseRow
function UWBP_PalEditor_C:GetPalData(ID, Out_Row) end
function UWBP_PalEditor_C:AssignPassives() end
---@param ID FName
---@param ShowKeyGuide boolean
function UWBP_PalEditor_C:ShowPassiveTooltip(ID, ShowKeyGuide) end
---@param WazaID EPalWazaID
---@param ShowKeyGuide boolean
function UWBP_PalEditor_C:ShowSkillTooltip(WazaID, ShowKeyGuide) end
---@param Data UCreativeMenu_WazaData_C
function UWBP_PalEditor_C:OnMasteredSkillSelected(Data) end
---@param Data UCreativeMenu_WazaData_C
function UWBP_PalEditor_C:OnAvailableWazaClicked(Data) end
---@param Button UWBP_ActiveSkill_C
function UWBP_PalEditor_C:OnActiveSkillRightClicked(Button) end
---@param Button UWBP_ActiveSkill_C
---@param ID EPalWazaID
---@param Index int32
function UWBP_PalEditor_C:OnActiveSkillClicked(Button, ID, Index) end
function UWBP_PalEditor_C:OnPassiveSlotUnhovered() end
---@param Button UWBP_PassiveSkill_C
---@param ID FName
function UWBP_PalEditor_C:OnPassiveSlotHovered(Button, ID) end
---@param Button UWBP_PassiveSkill_C
function UWBP_PalEditor_C:OnPassiveSlotRightClick(Button) end
---@param ID FName
function UWBP_PalEditor_C:OnPassiveSelected(ID) end
---@param Button UWBP_PassiveSkill_C
function UWBP_PalEditor_C:SetSelectedPassiveSlot(Button) end
---@param SelectedButton UWBP_PassiveSkill_C
function UWBP_PalEditor_C:OpenPassiveSkillList(SelectedButton) end
function UWBP_PalEditor_C:RefreshActiveSkillSlots() end
---@param WazaID EPalWazaID
function UWBP_PalEditor_C:OnWazaUnequip(WazaID) end
---@param Slot int32
---@param WazaID EPalWazaID
function UWBP_PalEditor_C:OnWazaEquip(Slot, WazaID) end
---@param WazaID EPalWazaID
function UWBP_PalEditor_C:OnWazaUnlearn(WazaID) end
---@param WazaEnum EPalWazaID
function UWBP_PalEditor_C:OnWazaLearn(WazaEnum) end
---@param IsDesignTime boolean
function UWBP_PalEditor_C:PreConstruct(IsDesignTime) end
function UWBP_PalEditor_C:Construct() end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_147_K2Node_ComponentBoundEvent_0_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_K2Node_ComponentBoundEvent_1_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param bIsChecked boolean
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_CheckBox_1_K2Node_ComponentBoundEvent_2_OnCheckBoxComponentStateChanged__DelegateSignature(bIsChecked) end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_1_K2Node_ComponentBoundEvent_3_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param Text FText
---@param CommitMethod ETextCommit::Type
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_EditableTextBox_488_K2Node_ComponentBoundEvent_6_OnEditableTextBoxCommittedEvent__DelegateSignature(Text, CommitMethod) end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_299_K2Node_ComponentBoundEvent_7_OnButtonClicked__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_K2Node_ComponentBoundEvent_8_OnButtonClicked__DelegateSignature() end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_5_K2Node_ComponentBoundEvent_12_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_4_K2Node_ComponentBoundEvent_13_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_6_K2Node_ComponentBoundEvent_14_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_3_K2Node_ComponentBoundEvent_16_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_1_K2Node_ComponentBoundEvent_17_OnButtonClicked__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_113_K2Node_ComponentBoundEvent_18_OnButtonClickedEvent__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_113_K2Node_ComponentBoundEvent_19_OnButtonHoverEvent__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_113_K2Node_ComponentBoundEvent_20_OnButtonHoverEvent__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_2_K2Node_ComponentBoundEvent_15_OnButtonClicked__DelegateSignature() end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_7_K2Node_ComponentBoundEvent_21_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_10_K2Node_ComponentBoundEvent_25_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_8_K2Node_ComponentBoundEvent_26_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_9_K2Node_ComponentBoundEvent_27_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param Message FString
function UWBP_PalEditor_C:PrintToModLoader(Message) end
---@param Button UWBP_Button_C
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_K2Node_ComponentBoundEvent_23_OnButtonHovered__DelegateSignature(Button) end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_K2Node_ComponentBoundEvent_24_OnButtonUnhovered__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_PassiveList_101_K2Node_ComponentBoundEvent_28_OnBackAction__DelegateSignature() end
---@param ID FName
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_PassiveList_101_K2Node_ComponentBoundEvent_29_OnSelect__DelegateSignature(ID) end
---@param ID FName
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_PassiveList_101_K2Node_ComponentBoundEvent_30_Delegate_OnPassiveHovered__DelegateSignature(ID) end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_PassiveList_101_K2Node_ComponentBoundEvent_31_Delegate_OnPassiveUnhovered__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_5_K2Node_ComponentBoundEvent_36_OnButtonClicked__DelegateSignature() end
---@param Button UWBP_Button_C
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_5_K2Node_ComponentBoundEvent_37_OnButtonHovered__DelegateSignature(Button) end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_5_K2Node_ComponentBoundEvent_38_OnButtonUnhovered__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_6_K2Node_ComponentBoundEvent_39_OnButtonClicked__DelegateSignature() end
---@param Button UWBP_Button_C
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_6_K2Node_ComponentBoundEvent_40_OnButtonHovered__DelegateSignature(Button) end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_6_K2Node_ComponentBoundEvent_41_OnButtonUnhovered__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_3_K2Node_ComponentBoundEvent_45_OnButtonClicked__DelegateSignature() end
---@param Button UWBP_Button_C
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_3_K2Node_ComponentBoundEvent_46_OnButtonHovered__DelegateSignature(Button) end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_3_K2Node_ComponentBoundEvent_47_OnButtonUnhovered__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_K2Node_ComponentBoundEvent_22_OnButtonClickedEvent__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_K2Node_ComponentBoundEvent_42_OnButtonHoverEvent__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_K2Node_ComponentBoundEvent_43_OnButtonHoverEvent__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_1_K2Node_ComponentBoundEvent_44_OnButtonClickedEvent__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_1_K2Node_ComponentBoundEvent_48_OnButtonHoverEvent__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_1_K2Node_ComponentBoundEvent_49_OnButtonHoverEvent__DelegateSignature() end
---@param Item UObject
---@param Widget UUserWidget
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WazaMasteredList_K2Node_ComponentBoundEvent_35_OnListEntryInitializedDynamic__DelegateSignature(Item, Widget) end
---@param Item UObject
---@param Widget UUserWidget
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WazaAvailableList_K2Node_ComponentBoundEvent_53_OnListEntryInitializedDynamic__DelegateSignature(Item, Widget) end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_8_K2Node_ComponentBoundEvent_54_OnButtonClicked__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_4_K2Node_ComponentBoundEvent_55_OnButtonClicked__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_7_K2Node_ComponentBoundEvent_56_OnButtonClicked__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_11_K2Node_ComponentBoundEvent_57_OnButtonClicked__DelegateSignature() end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_13_K2Node_ComponentBoundEvent_32_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_14_K2Node_ComponentBoundEvent_34_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_15_K2Node_ComponentBoundEvent_58_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
---@param InValue float
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_SpinBox_16_K2Node_ComponentBoundEvent_59_OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_157_K2Node_ComponentBoundEvent_33_OnButtonHoverEvent__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_157_K2Node_ComponentBoundEvent_60_OnButtonHoverEvent__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_184_K2Node_ComponentBoundEvent_4_OnButtonHoverEvent__DelegateSignature() end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_Button_184_K2Node_ComponentBoundEvent_61_OnButtonHoverEvent__DelegateSignature() end
---@param Button UWBP_Button_C
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_Button_2_K2Node_ComponentBoundEvent_62_OnButtonHovered__DelegateSignature(Button) end
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_EmptySkill_K2Node_ComponentBoundEvent_63_OnClicked__DelegateSignature() end
---@param Button UWBP_EmptyPassiveSkill_C
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_WBP_EmptyPassiveSkill_K2Node_ComponentBoundEvent_5_OnClicked__DelegateSignature(Button) end
---@param bIsChecked boolean
function UWBP_PalEditor_C:BndEvt__WBP_PalEditor_CheckBox_Capture_K2Node_ComponentBoundEvent_9_OnCheckBoxComponentStateChanged__DelegateSignature(bIsChecked) end
---@param EntryPoint int32
function UWBP_PalEditor_C:ExecuteUbergraph_WBP_PalEditor(EntryPoint) end
---@param CharacterParam FPalIndividualCharacterSaveParameter
---@param ExtraParams FFSpawnExtraParams
function UWBP_PalEditor_C:OnFinish__DelegateSignature(CharacterParam, ExtraParams) end


