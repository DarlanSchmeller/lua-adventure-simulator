local game = {}
local renderer = require("core.renderer")

local GameData = require("system.game_data")
local nodeLoader = require("system.node_loader")

-- Instantiate GameData and assign it to global scope
local gameData = GameData:new()
_G.game = gameData

function game.start()
    -- Load nodes
    nodeLoader.loadNodes()

    for id, node in pairs(nodeLoader.getNodes()) do
        print(id .. " - " .. node.title)
    end
end

return game