---@meta

---@class UCreativeMenu_ItemListEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Border UImage
---@field Button_41 UButton
---@field DevIcon UImage
---@field FocusFrame UOverlay
---@field Icon UImage
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_3 UImage
---@field Image_4 UImage
---@field RarityBG UImage
---@field RarityBGBase UImage
---@field RarityBGBase_1 UImage
---@field DataHolder UCreativeMenu_ItemData_C
---@field IsHighlighted boolean
---@field IsSelected boolean
---@field OnClick FCreativeMenu_ItemListEntry_COnClick
---@field OnHover FCreativeMenu_ItemListEntry_COnHover
---@field OnUnhover FCreativeMenu_ItemListEntry_COnUnhover
UCreativeMenu_ItemListEntry_C = {}

function UCreativeMenu_ItemListEntry_C:SetupRarityColor() end
---@param IsSelected boolean
function UCreativeMenu_ItemListEntry_C:SetSelected(IsSelected) end
---@param IsHighlighted boolean
function UCreativeMenu_ItemListEntry_C:SetHighlighted(IsHighlighted) end
---@param Loaded UObject
function UCreativeMenu_ItemListEntry_C:OnLoaded_BDB55EEA43AD784C7F347DAC76DF2F9C(Loaded) end
function UCreativeMenu_ItemListEntry_C:BP_OnEntryReleased() end
---@param bIsExpanded boolean
function UCreativeMenu_ItemListEntry_C:BP_OnItemExpansionChanged(bIsExpanded) end
---@param bIsSelected boolean
function UCreativeMenu_ItemListEntry_C:BP_OnItemSelectionChanged(bIsSelected) end
---@param ListItemObject UObject
function UCreativeMenu_ItemListEntry_C:OnListItemObjectSet(ListItemObject) end
function UCreativeMenu_ItemListEntry_C:BndEvt__WBP_CharacterButton_Button_41_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UCreativeMenu_ItemListEntry_C:BndEvt__WBP_CharacterButton_Button_41_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UCreativeMenu_ItemListEntry_C:BndEvt__WBP_CharacterButton_Button_41_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UCreativeMenu_ItemListEntry_C:ExecuteUbergraph_CreativeMenu_ItemListEntry(EntryPoint) end
---@param Data FCreativeMenu_ItemStruct
function UCreativeMenu_ItemListEntry_C:OnUnhover__DelegateSignature(Data) end
---@param Data FCreativeMenu_ItemStruct
function UCreativeMenu_ItemListEntry_C:OnHover__DelegateSignature(Data) end
---@param Data FCreativeMenu_ItemStruct
function UCreativeMenu_ItemListEntry_C:OnClick__DelegateSignature(Data) end


