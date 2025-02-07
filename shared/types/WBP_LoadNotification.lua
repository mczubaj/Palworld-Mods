---@meta

---@class UWBP_LoadNotification_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TutorialGlow UWidgetAnimation
---@field Image UImage
---@field Image_59 UImage
---@field KeyText UTextBlock
---@field KeyName FString
UWBP_LoadNotification_C = {}

function UWBP_LoadNotification_C:Construct() end
---@param EntryPoint int32
function UWBP_LoadNotification_C:ExecuteUbergraph_WBP_LoadNotification(EntryPoint) end


