---@meta

---@class UWBP_PlayerListEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CheckBox_1 UCheckBox
---@field PlayerNameText UTextBlock
---@field bIsSelected boolean
---@field PlayerName FString
---@field OnSelectStateChanged FWBP_PlayerListEntry_COnSelectStateChanged
UWBP_PlayerListEntry_C = {}

function UWBP_PlayerListEntry_C:Reset() end
---@param bIsSelected boolean
function UWBP_PlayerListEntry_C:SetSelected(bIsSelected) end
---@param bIsSelected boolean
function UWBP_PlayerListEntry_C:IsSelected(bIsSelected) end
function UWBP_PlayerListEntry_C:Construct() end
---@param bIsChecked boolean
function UWBP_PlayerListEntry_C:BndEvt__WBP_PlayerListEntry_CheckBox_1_K2Node_ComponentBoundEvent_0_OnCheckBoxComponentStateChanged__DelegateSignature(bIsChecked) end
---@param EntryPoint int32
function UWBP_PlayerListEntry_C:ExecuteUbergraph_WBP_PlayerListEntry(EntryPoint) end
---@param bIsSelected boolean
---@param PlayerName FString
function UWBP_PlayerListEntry_C:OnSelectStateChanged__DelegateSignature(bIsSelected, PlayerName) end


