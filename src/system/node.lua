local class = require("middleclass")

---@class Node
---@field id string
---@field header string?
---@field title string?
---@field description string?
---@field choices Choice[]
local Node = class("Node")

function Node:initialize(id)
    self.id = id
    self.header = nil
    self.title = nil
    self.description = nil
    self.choices = {}

    for i, choice in pairs(self.choices) do
        if choice:hasRequirement() then
            local result = choice:runCondition()
        end
    end
end

return Node