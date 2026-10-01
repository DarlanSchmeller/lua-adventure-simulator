-- Constants
local ID = "kalandra.dive"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.description = [[While diving, you discover a sunken pirate ship only a few meters below
the surface. A few bubbles rise from inside it.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.kraken_game_over",
    "Take a breath and dive back down to get a closer look.",
    nil
))

table.insert(node.choices, Choice:new(
    "kalandra.kraken_game_over",
    "Ignore the ship and enjoy the rest of your time in the water.",
    nil
))

table.insert(node.choices, Choice:new(
    "kalandra.ship",
    "Carefully enter the ship and search its cabin.",
    nil,
    function()
        game.hasKey = true
    end
))

table.insert(node.choices, Choice:new(
    "kalandra.prologue",
    "This is unsettling! Get out of the water and return to the beach.",
    nil,
    function()
        game.medoDoMar = true
    end
))

return node