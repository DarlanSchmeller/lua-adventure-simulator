local game = {}
local renderer = require("core.renderer")

local GameData = require("system.game_data")
local Node = require("system.node")
local Choice = require("system.choice")

-- Instantiate GameData and assign it to global scope
local gameData = GameData:new()
_G.game = gameData

function game.start()
end

return game