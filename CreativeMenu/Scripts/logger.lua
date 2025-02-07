local config = require("./creative-menu-config")

local logger = {}

logger.log_level = {
    Info = 0,
    Warning = 1,
    Error = 2,
    Debug = 3
}

local log_level_name = {
    [logger.log_level.Info] = "Info",
    [logger.log_level.Warning] = "Warning",
    [logger.log_level.Error] = "Error",
    [logger.log_level.Debug] = "Debug"
}

local log_folder = "logs"
os.execute(string.format("mkdir %s", log_folder))
os.execute(string.format("mkdir %s\\creativemenu", log_folder))

local file_name = nil
local log_file = nil

if config.EnableLogging == true then
    file_name = os.date('%d-%m-%Y %H-%M-%S.log')
    log_file = io.open(string.format("%s\\creativemenu\\%s", log_folder, file_name), "w")
else
    print("[CreativeMenu] Logging is disabled.")
end

if config.AllowDebugLogging == true then
    print("[CreativeMenu] Debug Logging is enabled.")
end

local function format_log(message, log_level)
    if log_level == nil then log_level = logger.log_level.Info end
    return string.format("[%s] [%s] %s\n", os.date('%Y-%m-%d %X'), log_level_name[log_level], message)
end

local function log(message, log_level)
    if log_file ~= nil then
        if log_level == logger.log_level.Debug then
            if config.AllowDebugLogging == false then
                return
            end
        end
        ExecuteAsync(function ()
            print(string.format("[CreativeMenu] %s\n", message))
            log_file:write(format_log(message, log_level))
            log_file:flush()
        end)
    end
end

function logger.info(message)
    log(message, logger.log_level.Info)
end

function logger.warn(message)
    log(message, logger.log_level.Warning)
end

function logger.error(message)
    log(message, logger.log_level.Error)
end

function logger.debug(message)
    log(message, logger.log_level.Debug)
end

function logger.log(message, log_level)
    log(message, log_level)
end

return logger