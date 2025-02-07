local config = {}

config.Keybinds = {}

-- Can be enabled to allow giving unique Pal specific skills to anyone like Anubis' Spinning Roundhouse on Chikipi for example.
-- Keep in mind unique skills are not meant to work on other Pals so they will perform a default move instead and their AI will break afterwards.
-- I decided to let users choose if they want to enable this or not in case you enjoy the funny glitch resulting from this.
-- true = enabled, false = disabled
config.AllowUniqueAbilitiesOnEveryone = false

-- This adjusts how far spawned Pals can go before resetting, increase if you run into issues (Default 15000.0)
-- You shouldn't need to generally change this, so leave it be unless something breaks.
-- 15000.0 = 1500 meters
config.PalReturnRadius = 15000.0

-- Keybinds --
-- List of available keybinds: https://docs.ue4ss.com/lua-api/table-definitions/key.html
-- When changing keybinds, only include the key-code string itself, so for example instead of doing Key.F1, just do F1.
-- Key names are case sensitive, so NUM_ONE is correct while num_one is incorrect.

-- Key for opening the Menu (Default F1)
config.Keybinds.OpenMenu = "F1"

--- Logging ---

-- Basic Logs
-- Should always be true
config.EnableLogging = true

-- Debug Logs
-- Only necessary for troubleshooting, keep this false for normal use
config.AllowDebugLogging = false

return config