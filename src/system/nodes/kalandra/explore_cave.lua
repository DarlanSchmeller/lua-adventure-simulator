-- Constants
local ID = "kalandra.explore_cave"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.title = "Kalandra Dungeon"

node.description = [[You discover a secret dungeon that seems to have been untouched for
hundreds of years. Before you is a long, narrow corridor, and everything suggests
that traps are hidden here. A golden door stands at the far end, with several other
passageways along the sides.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.trap",
    "Walk down the corridor. The traps probably stopped working ages ago.",
    nil
))

table.insert(node.choices, Choice:new(
    "kalandra.narrow_place",
    "Search the narrow passage on the left.",
    nil,
    nil
))

table.insert(node.choices, Choice:new(
    "kalandra.trap",
    "Pull the lever beside you. It is obviously a trap.",
    nil
))

return node