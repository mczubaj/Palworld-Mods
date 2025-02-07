---@meta

---@class UWBP_ActiveSkill_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ActiveSkillNameText UTextBlock
---@field Border UImage
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
---@field OnClicked FWBP_ActiveSkill_COnClicked
---@field ID FName
---@field OnRightClick FWBP_ActiveSkill_COnRightClick
---@field OnHovered FWBP_ActiveSkill_COnHovered
---@field OnUnhovered FWBP_ActiveSkill_COnUnhovered
---@field Element EPalElementType
---@field Damage int32
---@field CoolTime float
---@field WazaID EPalWazaID
---@field Index int32
UWBP_ActiveSkill_C = {}

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UWBP_ActiveSkill_C:OnMouseButtonDown(MyGeometry, MouseEvent) end
---@param Element EPalElementType
---@param Icon TSoftObjectPtr<UTexture2D>
function UWBP_ActiveSkill_C:GetElementIcon(Element, Icon) end
---@param IsEmpty boolean
function UWBP_ActiveSkill_C:SetEmpty(IsEmpty) end
---@param WazaID EPalWazaID
function UWBP_ActiveSkill_C:SetData(WazaID) end
function UWBP_ActiveSkill_C:Construct() end
function UWBP_ActiveSkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UWBP_ActiveSkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UWBP_ActiveSkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
---@param Message FString
function UWBP_ActiveSkill_C:PrintToModLoader(Message) end
---@param EntryPoint int32
function UWBP_ActiveSkill_C:ExecuteUbergraph_WBP_ActiveSkill(EntryPoint) end
---@param Button UWBP_ActiveSkill_C
function UWBP_ActiveSkill_C:OnRightClick__DelegateSignature(Button) end
function UWBP_ActiveSkill_C:OnUnhovered__DelegateSignature() end
---@param ID EPalWazaID
function UWBP_ActiveSkill_C:OnHovered__DelegateSignature(ID) end
---@param Button UWBP_ActiveSkill_C
---@param ID EPalWazaID
---@param Index int32
function UWBP_ActiveSkill_C:OnClicked__DelegateSignature(Button, ID, Index) end


