---@meta

---@class UWBP_PassiveList_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Image UImage
---@field Image_64 UImage
---@field passiveList UVerticalBox
---@field PassiveSkillsList UVerticalBox
---@field WBP_Button UWBP_Button_C
---@field OnSelect FWBP_PassiveList_COnSelect
---@field SelectedPassives TArray<FName>
---@field AvailablePassives TArray<FName>
---@field bIsTooltipVisible boolean
---@field Delegate_OnPassiveHovered FWBP_PassiveList_CDelegate_OnPassiveHovered
---@field Delegate_OnPassiveUnhovered FWBP_PassiveList_CDelegate_OnPassiveUnhovered
---@field OnBackAction FWBP_PassiveList_COnBackAction
UWBP_PassiveList_C = {}

---@return TArray<FName>
function UWBP_PassiveList_C:GetAvailablePassives() end
---@param SelectedPassives TArray<FName>
function UWBP_PassiveList_C:RefreshAvailablePassives(SelectedPassives) end
function UWBP_PassiveList_C:OnPassiveUnhovered() end
---@param Button UWBP_PassiveSkill_C
---@param ID FName
function UWBP_PassiveList_C:OnPassiveHovered(Button, ID) end
function UWBP_PassiveList_C:Close() end
function UWBP_PassiveList_C:AddMissingPassives() end
function UWBP_PassiveList_C:Setup() end
---@param ID FName
function UWBP_PassiveList_C:CreateButton(ID) end
---@param Button UWBP_PassiveSkill_C
---@param ID FName
function UWBP_PassiveList_C:OnPassiveSelected(Button, ID) end
---@param PassiveSkillArray TArray<FName>
---@param SortedArray TArray<FName>
function UWBP_PassiveList_C:SortPassivesByRank(PassiveSkillArray, SortedArray) end
---@param IsDesignTime boolean
function UWBP_PassiveList_C:PreConstruct(IsDesignTime) end
function UWBP_PassiveList_C:Construct() end
function UWBP_PassiveList_C:BndEvt__WBP_PassiveList_WBP_Button_K2Node_ComponentBoundEvent_0_OnButtonClicked__DelegateSignature() end
---@param EntryPoint int32
function UWBP_PassiveList_C:ExecuteUbergraph_WBP_PassiveList(EntryPoint) end
function UWBP_PassiveList_C:OnBackAction__DelegateSignature() end
function UWBP_PassiveList_C:Delegate_OnPassiveUnhovered__DelegateSignature() end
---@param ID FName
function UWBP_PassiveList_C:Delegate_OnPassiveHovered__DelegateSignature(ID) end
---@param ID FName
function UWBP_PassiveList_C:OnSelect__DelegateSignature(ID) end


