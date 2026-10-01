local class = require("middleclass")

---@class GameData
---@field activeNode Node
---@field gameOver boolean
local GameData = class("GameData")

function GameData:initialize()
    self.activeNode = nil
    self.gameOver = false
    self.hasKey = false
end

return GameData