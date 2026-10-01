local class = require("middleclass")

---@class Node
---@field id string
---@field header string?
---@field title string?
---@field description string?
---@field choices Choice[]
local Node = class("Node")

function Node:initialize(id)
    self.id = id ---@type string
    self.header = nil ---@type string
    self.title = nil ---@type string
    self.description = nil ---@type string
    self.choices = {} ---@type table
    self.gameOver = false ---@type boolean
    self.gameWon = false ---@type boolean
end

return Node