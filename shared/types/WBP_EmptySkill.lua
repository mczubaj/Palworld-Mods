---@meta

---@class UWBP_EmptySkill_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ActiveSkillNameText UTextBlock
---@field Border UImage
---@field Button_241 UButton
---@field FocusFrame UOverlay
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_3 UImage
---@field Image_49 UImage
---@field OnClicked FWBP_EmptySkill_COnClicked
---@field ID FName
---@field OnRightClick FWBP_EmptySkill_COnRightClick
---@field OnHovered FWBP_EmptySkill_COnHovered
---@field OnUnhovered FWBP_EmptySkill_COnUnhovered
---@field Element EPalElementType
---@field Damage int32
---@field CoolTime float
---@field WazaID EPalWazaID
UWBP_EmptySkill_C = {}

function UWBP_EmptySkill_C:Construct() end
function UWBP_EmptySkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UWBP_EmptySkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UWBP_EmptySkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
---@param Message FString
function UWBP_EmptySkill_C:PrintToModLoader(Message) end
---@param EntryPoint int32
function UWBP_EmptySkill_C:ExecuteUbergraph_WBP_EmptySkill(EntryPoint) end
---@param Button UWBP_ActiveSkill_C
function UWBP_EmptySkill_C:OnRightClick__DelegateSignature(Button) end
function UWBP_EmptySkill_C:OnUnhovered__DelegateSignature() end
---@param ID EPalWazaID
function UWBP_EmptySkill_C:OnHovered__DelegateSignature(ID) end
function UWBP_EmptySkill_C:OnClicked__DelegateSignature() end


