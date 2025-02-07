---@meta

---@class UWBP_ItemKits_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ItemsScrollableList UScrollBox
---@field WBP_KitTargetWindow UWBP_KitTargetWindow_C
---@field bIsForeground boolean
---@field Tooltip UWBP_KitTooltip_C
---@field TooltipOffsetX double
---@field TooltipOffsetY double
---@field OnRequestPlayerList FWBP_ItemKits_COnRequestPlayerList
---@field OnError FWBP_ItemKits_COnError
---@field OnConfirm FWBP_ItemKits_COnConfirm
UWBP_ItemKits_C = {}

---@param PlayerList TArray<FString>
function UWBP_ItemKits_C:UpdatePlayers(PlayerList) end
function UWBP_ItemKits_C:SnapTooltipToCursor() end
function UWBP_ItemKits_C:HideTooltip() end
---@param Button UWBP_ItemKitButton_C
function UWBP_ItemKits_C:ShowTooltip(Button) end
---@param Tooltip UWBP_KitTooltip_C
function UWBP_ItemKits_C:AssignTooltip(Tooltip) end
---@return FFilePath
function UWBP_ItemKits_C:GetKitsPath() end
---@param Button UWBP_ItemKitButton_C
function UWBP_ItemKits_C:SpawnKit(Button) end
function UWBP_ItemKits_C:Load() end
function UWBP_ItemKits_C:Clear() end
---@param Item FF_ItemKitJsonRow
function UWBP_ItemKits_C:Add(Item) end
function UWBP_ItemKits_C:Construct() end
function UWBP_ItemKits_C:BndEvt__WBP_ItemKits_WBP_KitTargetWindow_K2Node_ComponentBoundEvent_0_OnRequestPlayerList__DelegateSignature() end
---@param Message FText
function UWBP_ItemKits_C:BndEvt__WBP_ItemKits_WBP_KitTargetWindow_K2Node_ComponentBoundEvent_1_OnError__DelegateSignature(Message) end
---@param Items TArray<FF_ItemKitItemData>
---@param targetData FFTargetData
function UWBP_ItemKits_C:BndEvt__WBP_ItemKits_WBP_KitTargetWindow_K2Node_ComponentBoundEvent_2_OnConfirm__DelegateSignature(Items, targetData) end
---@param EntryPoint int32
function UWBP_ItemKits_C:ExecuteUbergraph_WBP_ItemKits(EntryPoint) end
---@param Items TArray<FF_ItemKitItemData>
---@param targetData FFTargetData
function UWBP_ItemKits_C:OnConfirm__DelegateSignature(Items, targetData) end
---@param Message FText
function UWBP_ItemKits_C:OnError__DelegateSignature(Message) end
function UWBP_ItemKits_C:OnRequestPlayerList__DelegateSignature() end


