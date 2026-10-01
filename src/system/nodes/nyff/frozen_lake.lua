-- Constants
local ID = "nyff.frozen_lake"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.title = "The Frozen Lake"

node.description = [[The trail leads onto a frozen lake. Snow hides the cracks in the ice,
and the wind carries a faint cracking sound from beneath your feet.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.ice_cave",
    "Follow the shoreline toward a dark opening beneath the cliffs.",
    nil
))

table.insert(node.choices, Choice:new(
    "nyff.avalanche",
    "Run straight across the lake before the ice gives way.",
    nil
))

table.insert(node.choices, Choice:new(
    "nyff.ranger_station",
    "Turn back and look for the ranger station.",
    nil
))

return node