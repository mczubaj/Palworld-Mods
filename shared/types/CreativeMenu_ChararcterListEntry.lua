---@meta

---@class UCreativeMenu_ChararcterListEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Border UImage
---@field BossIcon UImage
---@field Button_41 UButton
---@field FocusFrame UOverlay
---@field Icon UImage
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_3 UImage
---@field Image_4 UImage
---@field DataHolder UCreativeMenu_CharacterData_C
---@field OnClick FCreativeMenu_ChararcterListEntry_COnClick
---@field OnHover FCreativeMenu_ChararcterListEntry_COnHover
---@field OnUnhover FCreativeMenu_ChararcterListEntry_COnUnhover
---@field IsHighlighted boolean
---@field IsSelected boolean
---@field IsUnreleasedPal boolean
UCreativeMenu_ChararcterListEntry_C = {}

function UCreativeMenu_ChararcterListEntry_C:Load() end
---@param IsSelected boolean
function UCreativeMenu_ChararcterListEntry_C:SetSelected(IsSelected) end
---@param IsHighlighted boolean
function UCreativeMenu_ChararcterListEntry_C:SetHighlighted(IsHighlighted) end
---@param Loaded UObject
function UCreativeMenu_ChararcterListEntry_C:OnLoaded_107D8731494F973677EF5A94FA535FFC(Loaded) end
function UCreativeMenu_ChararcterListEntry_C:BP_OnEntryReleased() end
---@param bIsExpanded boolean
function UCreativeMenu_ChararcterListEntry_C:BP_OnItemExpansionChanged(bIsExpanded) end
---@param bIsSelected boolean
function UCreativeMenu_ChararcterListEntry_C:BP_OnItemSelectionChanged(bIsSelected) end
function UCreativeMenu_ChararcterListEntry_C:Construct() end
---@param ListItemObject UObject
function UCreativeMenu_ChararcterListEntry_C:OnListItemObjectSet(ListItemObject) end
function UCreativeMenu_ChararcterListEntry_C:BndEvt__WBP_CharacterButton_Button_41_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UCreativeMenu_ChararcterListEntry_C:BndEvt__WBP_CharacterButton_Button_41_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UCreativeMenu_ChararcterListEntry_C:BndEvt__WBP_CharacterButton_Button_41_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
---@param Message FString
function UCreativeMenu_ChararcterListEntry_C:PrintToModLoader(Message) end
---@param EntryPoint int32
function UCreativeMenu_ChararcterListEntry_C:ExecuteUbergraph_CreativeMenu_ChararcterListEntry(EntryPoint) end
---@param Data FCreativeMenu_CharacterStruct
function UCreativeMenu_ChararcterListEntry_C:OnUnhover__DelegateSignature(Data) end
---@param Data FCreativeMenu_CharacterStruct
function UCreativeMenu_ChararcterListEntry_C:OnHover__DelegateSignature(Data) end
---@param Data FCreativeMenu_CharacterStruct
function UCreativeMenu_ChararcterListEntry_C:OnClick__DelegateSignature(Data) end


