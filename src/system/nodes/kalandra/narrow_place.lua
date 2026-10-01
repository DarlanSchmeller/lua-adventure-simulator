-- Constants
local ID = "kalandra.narrow_place"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.title = "Kalandra Dungeon"

node.description = [[You have reached the golden door! It is imposing and gleaming, and somehow radiates tremendous power.
You notice a golden lock that looks as if it needs a matching key.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.success",
    "Use the golden key",
    function()
        return game.hasKey == true
    end
))

table.insert(node.choices, Choice:new(
    "kalandra.prologue",
    "Return to the beach at Kalandra.",
    nil
))

table.insert(node.choices, Choice:new(
    "kalandra.trap",
    "Try to force the door open.",
    nil
))

return node