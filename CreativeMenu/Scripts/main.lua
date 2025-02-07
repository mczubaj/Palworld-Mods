local config = require("./creative-menu-config")
local logger = require("./logger")

local ModData = {
    Version = "0.4.2"
}

local ModActor = nil

---@class UPalLogUtility
local PalLogUtility = nil

---@class UPalUtility
local PalUtility = nil

logger.info("Loading main.lua")

if Key[config.Keybinds.OpenMenu] then
    logger.info(string.format("Keybind to Open Menu is set to %s", config.Keybinds.OpenMenu))
else
    logger.error(string.format("Invalid Key specified for Open Menu (%s)", config.Keybinds.OpenMenu))
end

local function Error(Message)
    error(string.format("[Lua CreativeMenu] %s", Message))
end

---@param WorldContextObject AActor
---@param ItemIdAndNum FPalStaticItemIdAndNum
local function AddItemLog(WorldContextObject, ItemIdAndNum)
    if WorldContextObject == nil or not WorldContextObject:IsValid() then return end

    if PalLogUtility == nil or not PalLogUtility:IsValid() then
        PalLogUtility = StaticFindObject("/Script/Pal.Default__PalLogUtility")
    end

    PalLogUtility:AddItemGetLog(WorldContextObject, { Num = ItemIdAndNum.Num, StaticItemId = ItemIdAndNum.StaticItemId })
end

local CreativeMenu_Command = FName("enable_creativemenu")
---@param BaseCampId FGuid
---@param FunctionName FName
RegisterHook("/Script/Pal.PalNetworkBaseCampComponent:Request_Server_void", function (Context, BaseCampId, FunctionName)
    if FunctionName:get() ~= CreativeMenu_Command then return end
    ---@class APalNetworkTransmitter
    local Transmitter = Context:get():GetOuter()
    if Transmitter:IsValid() then
        if Transmitter.Owner:IsValid() then
            if ModActor ~= nil and ModActor:IsValid() then
                ModActor:OnServerAcknowledgePossession(Transmitter.Owner)
                logger.debug("Transmitter attached!")
            else
                Error("Something went wrong loading blueprint logic, please ensure CreativeMenu.pak is installed correctly and is being loaded properly.")
            end
        else
            Error("PlayerController was invalid!")
        end
    else
        Error("NetworkTransmitter was invalid!")
    end
end)

---@param Context AActor
RegisterCustomEvent("LUA_CreativeMenuSetup", function (Context)
    Context:get().bAllowUniqueAbilitiesOnAnyone = config.AllowUniqueAbilitiesOnEveryone
    Context:get().PalReturnRadius = config.PalReturnRadius
    Context:get().OpenMenuKeybind = config.Keybinds.OpenMenu
    Context:get().BoundKey = { KeyName = FName(config.Keybinds.OpenMenu) }
    ModActor = Context:get()
    logger.info("BeginPlay -> Blueprint successfully configured!")
end)

---@param Context AActor
---@param ItemIdAndNum FPalStaticItemIdAndNum
RegisterCustomEvent("CM_AddItemLog", function (Context, ItemIdAndNum)
    AddItemLog(Context:get(), ItemIdAndNum:get())
end)

---@param Context AActor
---@param Message FString
---@param LogLevel uint8
RegisterCustomEvent("CM_LogToFile", function (Context, Message, LogLevel)
    logger.log(Message:get():ToString(), LogLevel:get())
end)

---@param self UObject
---@param param1 any
---@param param2 any
---@param param3 FPalLogAdditionalData
RegisterHook("/Script/Pal.PalPlayerController:SendLog_ToClient", function (self, param1, param2, param3)
    print(param3:get().DefaultFontStyleName:ToString() .. "\n")
end)

logger.info("Finished loading main.lua!")
logger.info(string.format("CreativeMenu Lua v%s has been loaded.", ModData.Version))