---@meta

---@class UWBP_ItemWithAmount_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AmountTextBlock UTextBlock
---@field ItemIcon UCommonLazyImage
---@field ItemId FName
---@field Amount int32
UWBP_ItemWithAmount_C = {}

function UWBP_ItemWithAmount_C:Setup() end
---@param IsDesignTime boolean
function UWBP_ItemWithAmount_C:PreConstruct(IsDesignTime) end
function UWBP_ItemWithAmount_C:Construct() end
---@param EntryPoint int32
function UWBP_ItemWithAmount_C:ExecuteUbergraph_WBP_ItemWithAmount(EntryPoint) end


