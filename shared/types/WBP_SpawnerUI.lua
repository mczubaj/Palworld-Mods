---@meta

---@class UWBP_SpawnerUI_C : UPalUserWidgetOverlayUI
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CharacterIdText UTextBlock
---@field CharacterList UTileView
---@field CharacterNameText UTextBlock
---@field CheckBox_DevItems UCheckBox
---@field CloseButton UWBP_Button_C
---@field EditableTextBox UEditableTextBox
---@field EditableTextBox_126 UEditableTextBox
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_3 UImage
---@field Image_64 UImage
---@field ItemIdText UTextBlock
---@field ItemList UTileView
---@field ItemNameText UTextBlock
---@field ItemNameText_1 UTextBlock
---@field ItemsTabButton UWBP_TabButton_C
---@field KitsTabButton UWBP_TabButton_C
---@field PalTabButton UWBP_TabButton_C
---@field ServerAdminOverlay UOverlay
---@field WBP_AmountSelection UWBP_AmountSelection_C
---@field WBP_ItemKits UWBP_ItemKits_C
---@field WBP_KitTooltip UWBP_KitTooltip_C
---@field WBP_Notification UWBP_Notification_C
---@field WBP_WeatherTimeUI UWBP_WeatherTimeUI_C
---@field WeatherTimeButton UWBP_TabButton_C
---@field WidgetSwitcher_244 UWidgetSwitcher
---@field SelectedCharacterId FName
---@field SelectedCharacterName FText
---@field HoveredCharacterName FText
---@field CharacterParam FPalIndividualCharacterSaveParameter
---@field SelectedItemId FName
---@field bCaptureInstantly boolean
---@field PalEditor UWBP_PalEditor_C
---@field AmountSelector UWBP_AmountSelection_C
---@field bHasLoadedItems boolean
---@field bAllowUniqueAbilitiesOnAnyone boolean
---@field History TArray<FPalIndividualCharacterSaveParameter>
---@field HistoryComponent UBP_PalEditHistoryComponent_C
---@field ItemArray TArray<UCreativeMenu_ItemData_C>
---@field CharacterArray TArray<UCreativeMenu_CharacterData_C>
---@field CharacterSize FVector
---@field ModVersion FString
---@field SaveObject UCreativeMenuSaveObject_C
---@field CloseMenuHandle FPalUIActionBindData
---@field PlayerList TArray<FString>
---@field OnPlayerListUpdated FWBP_SpawnerUI_COnPlayerListUpdated
---@field EggLotteryDataManager ABP_EggLotteryDataManager_C
---@field ExtraParams FFSpawnExtraParams
---@field EggElementMap TMap<EPalElementType, FName>
UWBP_SpawnerUI_C = {}

---@param bEnableDeveloperItems boolean
function UWBP_SpawnerUI_C:ToggleDeveloperItems(bEnableDeveloperItems) end
function UWBP_SpawnerUI_C:TryModifyShinyPalToBoss() end
---@param ItemIDAndNum FPalStaticItemIdAndNum
function UWBP_SpawnerUI_C:CM_AddItemLog(ItemIDAndNum) end
---@param Transmitter UCOMP_SpawnerToolReceiver_C
---@param WasSuccessful boolean
function UWBP_SpawnerUI_C:GetTransmitter(Transmitter, WasSuccessful) end
---@param PlayerList TArray<FString>
function UWBP_SpawnerUI_C:UpdatePlayerList(PlayerList) end
function UWBP_SpawnerUI_C:OnEscape() end
---@param HitLocation FVector
function UWBP_SpawnerUI_C:GetTraceLocation(HitLocation) end
---@param FilterWord FText
function UWBP_SpawnerUI_C:FilterCharacters(FilterWord) end
---@param FilterWord FText
function UWBP_SpawnerUI_C:FilterItemsByName(FilterWord) end
function UWBP_SpawnerUI_C:AddToHistory() end
---@param Count int32
---@param targetData FFTargetData
function UWBP_SpawnerUI_C:AddItem(Count, targetData) end
---@param Data FCreativeMenu_ItemStruct
function UWBP_SpawnerUI_C:OnItemClicked(Data) end
---@param Data FCreativeMenu_ItemStruct
function UWBP_SpawnerUI_C:OnItemDeselected(Data) end
---@param Data FCreativeMenu_ItemStruct
function UWBP_SpawnerUI_C:OnItemSelected(Data) end
---@param CharacterParam FPalIndividualCharacterSaveParameter
---@param ExtraParams FFSpawnExtraParams
function UWBP_SpawnerUI_C:OnCharacterEdited(CharacterParam, ExtraParams) end
---@param Data FCreativeMenu_CharacterStruct
function UWBP_SpawnerUI_C:OnCharacterUnhovered(Data) end
---@param Data FCreativeMenu_CharacterStruct
function UWBP_SpawnerUI_C:OnCharacterHovered(Data) end
---@param Data FCreativeMenu_CharacterStruct
function UWBP_SpawnerUI_C:OnCharacterSelected(Data) end
---@param ID FPalInstanceID
function UWBP_SpawnerUI_C:OnCharacterSpawned(ID) end
function UWBP_SpawnerUI_C:SpawnCharacter() end
function UWBP_SpawnerUI_C:OpenPalEditor() end
---@param ID FName
---@param Icon TSoftObjectPtr<UTexture2D>
---@param IsBoss boolean
function UWBP_SpawnerUI_C:CreateCharacterButton(ID, Icon, IsBoss) end
---@param CharacterID FName
---@return FString
function UWBP_SpawnerUI_C:GetCharacterNameSuffix(CharacterID) end
function UWBP_SpawnerUI_C:LoadKits() end
function UWBP_SpawnerUI_C:LoadItems() end
function UWBP_SpawnerUI_C:LoadNPCs() end
function UWBP_SpawnerUI_C:LoadPals() end
function UWBP_SpawnerUI_C:Construct() end
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_WBP_Button_K2Node_ComponentBoundEvent_1_OnButtonClicked__DelegateSignature() end
---@param Message FString
function UWBP_SpawnerUI_C:PrintToModLoader(Message) end
---@param Text FText
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_EditableTextBox_126_K2Node_ComponentBoundEvent_0_OnEditableTextBoxChangedEvent__DelegateSignature(Text) end
---@param Text FText
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_EditableTextBox_K2Node_ComponentBoundEvent_5_OnEditableTextBoxChangedEvent__DelegateSignature(Text) end
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_WBP_TabButton_K2Node_ComponentBoundEvent_6_OnButtonClicked__DelegateSignature() end
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_WBP_TabButton_198_K2Node_ComponentBoundEvent_8_OnButtonClicked__DelegateSignature() end
---@param Item UObject
---@param Widget UUserWidget
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_ItemList_K2Node_ComponentBoundEvent_7_OnListEntryInitializedDynamic__DelegateSignature(Item, Widget) end
---@param Item UObject
---@param Widget UUserWidget
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_CharacterList_K2Node_ComponentBoundEvent_9_OnListEntryInitializedDynamic__DelegateSignature(Item, Widget) end
function UWBP_SpawnerUI_C:BP_OnActivated() end
function UWBP_SpawnerUI_C:BP_OnDeactivated() end
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_WBP_AmountSelection_K2Node_ComponentBoundEvent_3_OnRequestPlayerList__DelegateSignature() end
---@param Amount int32
---@param targetData FFTargetData
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_WBP_AmountSelection_K2Node_ComponentBoundEvent_13_OnConfirm__DelegateSignature(Amount, targetData) end
---@param Message FText
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_WBP_AmountSelection_K2Node_ComponentBoundEvent_2_OnError__DelegateSignature(Message) end
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_ItemsTabButton_1_K2Node_ComponentBoundEvent_10_OnButtonClicked__DelegateSignature() end
function UWBP_SpawnerUI_C:CustomEvent() end
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_WBP_ItemKits_K2Node_ComponentBoundEvent_4_OnRequestPlayerList__DelegateSignature() end
---@param Message FText
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_WBP_ItemKits_K2Node_ComponentBoundEvent_11_OnError__DelegateSignature(Message) end
---@param Items TArray<FF_ItemKitItemData>
---@param targetData FFTargetData
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_WBP_ItemKits_K2Node_ComponentBoundEvent_12_OnConfirm__DelegateSignature(Items, targetData) end
---@param bIsChecked boolean
function UWBP_SpawnerUI_C:BndEvt__WBP_SpawnerUI_CheckBox_DevItems_K2Node_ComponentBoundEvent_14_OnCheckBoxComponentStateChanged__DelegateSignature(bIsChecked) end
---@param EntryPoint int32
function UWBP_SpawnerUI_C:ExecuteUbergraph_WBP_SpawnerUI(EntryPoint) end
---@param PlayerList TArray<FString>
function UWBP_SpawnerUI_C:OnPlayerListUpdated__DelegateSignature(PlayerList) end


