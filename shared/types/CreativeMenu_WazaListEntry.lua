---@meta

---@class UCreativeMenu_WazaListEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ActiveSkillNameText UTextBlock
---@field Border UImage
---@field Border_1 UImage
---@field Button_241 UButton
---@field DamageText UTextBlock
---@field ElementBG UImage
---@field ElementContainer UOverlay
---@field FocusFrame UOverlay
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_3 UImage
---@field Image_49 UImage
---@field Image2 UImage
---@field LearnedStateIndicator UOverlay
---@field DataHolder UCreativeMenu_WazaData_C
---@field OnClick FCreativeMenu_WazaListEntry_COnClick
---@field OnHover FCreativeMenu_WazaListEntry_COnHover
---@field OnUnhover FCreativeMenu_WazaListEntry_COnUnhover
UCreativeMenu_WazaListEntry_C = {}

---@return FSlateBrush
function UCreativeMenu_WazaListEntry_C:Get_Image2_Brush() end
---@return ESlateVisibility
function UCreativeMenu_WazaListEntry_C:Get_LearnedStateIndicator_Visibility() end
---@return FText
function UCreativeMenu_WazaListEntry_C:Get_DamageText_Text() end
---@param Type EPalWazaID
---@param OutData FPalWazaDatabaseRaw
function UCreativeMenu_WazaListEntry_C:GetData(Type, OutData) end
---@return FText
function UCreativeMenu_WazaListEntry_C:Get_ActiveSkillNameText_Text() end
---@param Loaded UObject
function UCreativeMenu_WazaListEntry_C:OnLoaded_FCFF8BC94676FC045B37289098D7A950(Loaded) end
function UCreativeMenu_WazaListEntry_C:BP_OnEntryReleased() end
---@param bIsExpanded boolean
function UCreativeMenu_WazaListEntry_C:BP_OnItemExpansionChanged(bIsExpanded) end
---@param bIsSelected boolean
function UCreativeMenu_WazaListEntry_C:BP_OnItemSelectionChanged(bIsSelected) end
---@param ListItemObject UObject
function UCreativeMenu_WazaListEntry_C:OnListItemObjectSet(ListItemObject) end
function UCreativeMenu_WazaListEntry_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UCreativeMenu_WazaListEntry_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
function UCreativeMenu_WazaListEntry_C:BndEvt__CreativeMenu_WazaListEntry_Button_241_K2Node_ComponentBoundEvent_3_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UCreativeMenu_WazaListEntry_C:ExecuteUbergraph_CreativeMenu_WazaListEntry(EntryPoint) end
---@param Data FCreativeMenu_WazaStruct
function UCreativeMenu_WazaListEntry_C:OnUnhover__DelegateSignature(Data) end
---@param Data FCreativeMenu_WazaStruct
function UCreativeMenu_WazaListEntry_C:OnHover__DelegateSignature(Data) end
---@param Data UCreativeMenu_WazaData_C
function UCreativeMenu_WazaListEntry_C:OnClick__DelegateSignature(Data) end


