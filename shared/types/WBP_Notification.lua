---@meta

---@class UWBP_Notification_C : UUserWidget
---@field Image_46 UImage
---@field NotificationText UTextBlock
UWBP_Notification_C = {}

function UWBP_Notification_C:HideNotification() end
function UWBP_Notification_C:ShowNotification_Internal() end
---@param Message FText
---@param Duration double
function UWBP_Notification_C:ShowNotification(Message, Duration) end


