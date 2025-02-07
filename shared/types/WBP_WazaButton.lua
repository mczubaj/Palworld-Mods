---@meta

---@class UWBP_WazaButton_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Border UImage
---@field Button_85 UButton
---@field DamageText UTextBlock
---@field ElementBG UImage
---@field FocusFrame UOverlay
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_3 UImage
---@field Image_116 UImage
---@field SkillLearnedIndicator UImage
---@field SkillNameText UTextBlock
---@field bIsLearned boolean
---@field OnLearnedStateChanged FWBP_WazaButton_COnLearnedStateChanged
---@field WazaID FName
---@field WazaName FText
---@field WazaEnum EPalWazaID
---@field IconMap TMap<EPalElementType, TSoftObjectPtr<UTexture2D>>
---@field Damage int32
---@field Element EPalElementType
UWBP_WazaButton_C = {}

---@param bIsLearned boolean
function UWBP_WazaButton_C:SetLearnedState(bIsLearned) end
---@param IsDesignTime boolean
function UWBP_WazaButton_C:PreConstruct(IsDesignTime) end
function UWBP_WazaButton_C:Construct() end
function UWBP_WazaButton_C:BndEvt__WBP_WazaButton_Button_85_K2Node_ComponentBoundEvent_1_OnButtonClickedEvent__DelegateSignature() end
function UWBP_WazaButton_C:BndEvt__WBP_WazaButton_Button_85_K2Node_ComponentBoundEvent_3_OnButtonHoverEvent__DelegateSignature() end
function UWBP_WazaButton_C:BndEvt__WBP_WazaButton_Button_85_K2Node_ComponentBoundEvent_4_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UWBP_WazaButton_C:ExecuteUbergraph_WBP_WazaButton(EntryPoint) end
---@param bIsLearned boolean
---@param WazaElement UWBP_WazaButton_C
function UWBP_WazaButton_C:OnLearnedStateChanged__DelegateSignature(bIsLearned, WazaElement) end


