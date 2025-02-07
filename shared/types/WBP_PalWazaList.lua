---@meta

---@class UWBP_PalWazaList_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Image UImage
---@field Image_64 UImage
---@field WazaList UScrollBox
---@field WBP_Button UWBP_Button_C
---@field WBP_Button_1 UWBP_Button_C
---@field WBP_Button_2 UWBP_Button_C
---@field OnConfirm FWBP_PalWazaList_COnConfirm
---@field OnWazaAdded_Delegate FWBP_PalWazaList_COnWazaAdded_Delegate
---@field OnWazaRemoved_Delegate FWBP_PalWazaList_COnWazaRemoved_Delegate
---@field SelectedWazas TArray<EPalWazaID>
---@field AddedWazas TArray<EPalWazaID>
---@field CharacterID FName
---@field bAllowUniqueAbilitiesOnAnyone boolean
UWBP_PalWazaList_C = {}

function UWBP_PalWazaList_C:Refresh() end
---@param bIsLearned boolean
---@param WazaElement UWBP_WazaButton_C
function UWBP_PalWazaList_C:OnWazaStateChanged(bIsLearned, WazaElement) end
function UWBP_PalWazaList_C:Construct() end
function UWBP_PalWazaList_C:BndEvt__WBP_PalWazaList_WBP_Button_K2Node_ComponentBoundEvent_0_OnButtonClicked__DelegateSignature() end
function UWBP_PalWazaList_C:BndEvt__WBP_PalWazaList_WBP_Button_1_K2Node_ComponentBoundEvent_1_OnButtonClicked__DelegateSignature() end
function UWBP_PalWazaList_C:BndEvt__WBP_PalWazaList_WBP_Button_2_K2Node_ComponentBoundEvent_2_OnButtonClicked__DelegateSignature() end
---@param EntryPoint int32
function UWBP_PalWazaList_C:ExecuteUbergraph_WBP_PalWazaList(EntryPoint) end
---@param WazaID EPalWazaID
function UWBP_PalWazaList_C:OnWazaRemoved_Delegate__DelegateSignature(WazaID) end
---@param WazaID EPalWazaID
function UWBP_PalWazaList_C:OnWazaAdded_Delegate__DelegateSignature(WazaID) end
function UWBP_PalWazaList_C:OnConfirm__DelegateSignature() end


