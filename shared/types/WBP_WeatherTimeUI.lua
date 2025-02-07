---@meta

---@class UWBP_WeatherTimeUI_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RadialSlider_198 URadialSlider
---@field TextBlock_133 UTextBlock
---@field Hour int32
---@field Minute int32
---@field Seconds int32
---@field Milliseconds int32
UWBP_WeatherTimeUI_C = {}

function UWBP_WeatherTimeUI_C:UpdateClock_Debug() end
---@param IsDesignTime boolean
function UWBP_WeatherTimeUI_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UWBP_WeatherTimeUI_C:ExecuteUbergraph_WBP_WeatherTimeUI(EntryPoint) end


