---@meta

---@class UWBP_PalRecruite_Test_C : UPalUserWidgetOverlayUI
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WBP_CommonButton UWBP_CommonButton_C
---@field WBP_CommonButton_1 UWBP_CommonButton_C
---@field WBP_PalCommonInfo_SaveParameter UWBP_PalCommonInfo_SaveParameter_C
---@field OnRecruit FWBP_PalRecruite_Test_COnRecruit
UWBP_PalRecruite_Test_C = {}

---@param displayParameter FPalIndividualCharacterSaveParameter
function UWBP_PalRecruite_Test_C:DisplayPalInfo(displayParameter) end
function UWBP_PalRecruite_Test_C:OnSetup() end
function UWBP_PalRecruite_Test_C:BndEvt__WBP_PalRecruite_Test_WBP_CommonButton_K2Node_ComponentBoundEvent_0_OnClicked__DelegateSignature() end
function UWBP_PalRecruite_Test_C:BndEvt__WBP_PalRecruite_Test_WBP_CommonButton_1_K2Node_ComponentBoundEvent_1_OnClicked__DelegateSignature() end
---@param EntryPoint int32
function UWBP_PalRecruite_Test_C:ExecuteUbergraph_WBP_PalRecruite_Test(EntryPoint) end
function UWBP_PalRecruite_Test_C:OnRecruit__DelegateSignature() end


