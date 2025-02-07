---@meta

---@class UWBP_Tooltip_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BP_PalRichTextBlock_C_703 UBP_PalRichTextBlock_C
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_101 UImage
---@field KeyGuideContainer UVerticalBox
---@field PrimaryKeyGuideContainer UHorizontalBox
---@field PrimaryKeyGuideIcon UWBP_PalKeyGuideIcon_C
---@field PrimaryKeyGuideText UTextBlock
---@field SecondaryKeyGuideContainer UHorizontalBox
---@field SecondaryKeyGuideIcon UWBP_PalKeyGuideIcon_C
---@field SecondaryKeyGuideText UTextBlock
---@field TitleBar UOverlay
---@field TitleText UTextBlock
---@field bIsVisible boolean
UWBP_Tooltip_C = {}

function UWBP_Tooltip_C:Hide() end
---@param PrimaryActionKey FName
---@param PrimaryActionInfo FText
---@param SecondaryActionKey FName
---@param SecondaryActionInfo FText
UWBP_Tooltip_C['Set Key Guide'] = function(PrimaryActionKey, PrimaryActionInfo, SecondaryActionKey, SecondaryActionInfo) end
---@param Content FText
function UWBP_Tooltip_C:SetContent(Content) end
---@param Title FText
function UWBP_Tooltip_C:SetTitle(Title) end
function UWBP_Tooltip_C:Construct() end
function UWBP_Tooltip_C:Show() end
---@param EntryPoint int32
function UWBP_Tooltip_C:ExecuteUbergraph_WBP_Tooltip(EntryPoint) end


