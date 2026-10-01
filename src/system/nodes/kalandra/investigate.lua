-- Constants
local ID = "kalandra.investigate"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.title = "Beach of Kalandra"

node.description = [[You explore the area and find a trail leading to a remote cave that
seems empty and abandoned. The cave walls bear writings about the legend of the
Kraken, along with drawings suggesting that a spell can defeat it.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.sun_bath",
    "A Kraken? Magic? What is this, an adventure movie? Forget this nonsense and head back to the beach to catch some sun.",
    nil
))

table.insert(node.choices, Choice:new(
    "kalandra.explore_cave",
    "Amazing! Explore the cave further and uncover its secrets.",
    nil
))

table.insert(node.choices, Choice:new(
    "kalandra.dive",
    "All this panic over an octopus? Dive in and prove it isn't real.",
    nil
))

return node