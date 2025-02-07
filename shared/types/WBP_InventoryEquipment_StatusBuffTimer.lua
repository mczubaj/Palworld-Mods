---@meta

---@class UWBP_InventoryEquipment_StatusBuffTimer_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Image_Arrow_Buff UImage
---@field Image_Arrow_Debuff UImage
---@field Image_Base UImage
---@field Image_Gauge UImage
---@field BuffIcons TMap<EPalFoodStatusEffectType, UTexture>
---@field DebuffIcons TMap<EPalFoodStatusEffectType, UTexture>
---@field StatusTimerUpdateTimer FTimerHandle
---@field CurrentIndividualParam UPalIndividualCharacterParameter
---@field BaseIcons TMap<EPalFoodStatusEffectType, UTexture2D>
---@field ['Is Regene'] boolean
UWBP_InventoryEquipment_StatusBuffTimer_C = {}

---@param BuffType EPalFoodStatusEffectType
---@param IsBuff boolean
---@param individualParam UPalIndividualCharacterParameter
---@param IsRegene boolean
function UWBP_InventoryEquipment_StatusBuffTimer_C:SetFoodBuff(BuffType, IsBuff, individualParam, IsRegene) end
function UWBP_InventoryEquipment_StatusBuffTimer_C:Destruct() end
function UWBP_InventoryEquipment_StatusBuffTimer_C:UpdateStatusTime() end
---@param EntryPoint int32
function UWBP_InventoryEquipment_StatusBuffTimer_C:ExecuteUbergraph_WBP_InventoryEquipment_StatusBuffTimer(EntryPoint) end


