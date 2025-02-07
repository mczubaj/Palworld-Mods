---@meta

---@class UWBP_EmptyPassiveSkill_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Border UImage
---@field Button_241 UButton
---@field FocusFrame UOverlay
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_3 UImage
---@field Image_49 UImage
---@field PassiveNameText UTextBlock
---@field OnClicked FWBP_EmptyPassiveSkill_COnClicked
---@field OnHovered FWBP_EmptyPassiveSkill_COnHovered
---@field OnUnhovered FWBP_EmptyPassiveSkill_COnUnhovered
---@field OnRightClick FWBP_EmptyPassiveSkill_COnRightClick
UWBP_EmptyPassiveSkill_C = {}

function UWBP_EmptyPassiveSkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UWBP_EmptyPassiveSkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
---@param Message FString
function UWBP_EmptyPassiveSkill_C:PrintToModLoader(Message) end
function UWBP_EmptyPassiveSkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_3_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UWBP_EmptyPassiveSkill_C:ExecuteUbergraph_WBP_EmptyPassiveSkill(EntryPoint) end
---@param Button UWBP_PassiveSkill_C
function UWBP_EmptyPassiveSkill_C:OnRightClick__DelegateSignature(Button) end
function UWBP_EmptyPassiveSkill_C:OnUnhovered__DelegateSignature() end
---@param Button UWBP_PassiveSkill_C
---@param ID FName
function UWBP_EmptyPassiveSkill_C:OnHovered__DelegateSignature(Button, ID) end
---@param Button UWBP_EmptyPassiveSkill_C
function UWBP_EmptyPassiveSkill_C:OnClicked__DelegateSignature(Button) end


