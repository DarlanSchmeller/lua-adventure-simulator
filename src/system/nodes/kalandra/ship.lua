-- Constants
local ID = "kalandra.ship"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.title = "Inside the Wreck"

node.description = [[You slip into the sunken ship and search the captain's cabin. Beneath a
rotted chart, you find a golden key. The hull groans around you as bubbles stream
from a crack in the deck.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.prologue",
    "Take the key and return to the beach.",
    nil
))

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

return node
