---@meta

---@class UWBP_PassiveSkill_C : UUserWidget
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
---@field RankIndicator UImage
---@field OnClicked FWBP_PassiveSkill_COnClicked
---@field ID FName
---@field OnHovered FWBP_PassiveSkill_COnHovered
---@field OnUnhovered FWBP_PassiveSkill_COnUnhovered
---@field OnRightClick FWBP_PassiveSkill_COnRightClick
UWBP_PassiveSkill_C = {}

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UWBP_PassiveSkill_C:OnMouseButtonDown(MyGeometry, MouseEvent) end
---@param ID FName
function UWBP_PassiveSkill_C:SetData(ID) end
---@param Rank int32
function UWBP_PassiveSkill_C:SetRank(Rank) end
---@param IsEmpty boolean
function UWBP_PassiveSkill_C:SetEmpty(IsEmpty) end
function UWBP_PassiveSkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UWBP_PassiveSkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
---@param Message FString
function UWBP_PassiveSkill_C:PrintToModLoader(Message) end
function UWBP_PassiveSkill_C:BndEvt__WBP_PassiveSkill_Button_241_K2Node_ComponentBoundEvent_3_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UWBP_PassiveSkill_C:ExecuteUbergraph_WBP_PassiveSkill(EntryPoint) end
---@param Button UWBP_PassiveSkill_C
function UWBP_PassiveSkill_C:OnRightClick__DelegateSignature(Button) end
function UWBP_PassiveSkill_C:OnUnhovered__DelegateSignature() end
---@param Button UWBP_PassiveSkill_C
---@param ID FName
function UWBP_PassiveSkill_C:OnHovered__DelegateSignature(Button, ID) end
---@param Button UWBP_PassiveSkill_C
---@param ID FName
function UWBP_PassiveSkill_C:OnClicked__DelegateSignature(Button, ID) end


