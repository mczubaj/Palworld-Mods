---@meta

---@class UWBP_KitTooltip_C : UUserWidget
---@field Image UImage
---@field Image_1 UImage
---@field Image_101 UImage
---@field ItemWrapBox UWrapBox
---@field TitleBar UOverlay
---@field TitleText UTextBlock
UWBP_KitTooltip_C = {}

function UWBP_KitTooltip_C:Hide() end
---@param Items TArray<FF_ItemKitItemData>
---@param Title FText
function UWBP_KitTooltip_C:Show(Items, Title) end


