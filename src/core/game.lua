local game = {}
local Engine = require("core.engine")

local GameData = require("system.game_data")
local nodeLoader = require("system.node_loader")

-- Instantiate GameData and assign it to global scope
local gameData = GameData:new()
_G.game = gameData

function game.start()
    -- Load nodes
    nodeLoader.loadNodes()
    gameData.activeNode = nodeLoader.getInitialNode()

    -- Check for nodeLoader errors
    if nodeLoader.hasErrors() then
        print("\nFound errors on nodeLoader process, aborting execution!")
        os.exit()
    end

    -- Start engine
    local engine = Engine:new()  ---@type Engine
    engine:runMainLoop()
end

return game