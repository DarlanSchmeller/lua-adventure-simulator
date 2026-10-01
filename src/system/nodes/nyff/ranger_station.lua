-- Constants
local ID = "nyff.ranger_station"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.title = "The Ranger Station"

node.description = [[You reach a battered ranger station half-buried in snow. The radio is
dead, but a map on the wall marks an ice cave and a narrow ridge that leads toward a
rescue post.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.shelter",
    "Get inside, build a fire, and wait for the storm to pass.",
    nil
))

table.insert(node.choices, Choice:new(
    "nyff.ice_cave",
    "Follow the map to the ice cave.",
    nil
))

table.insert(node.choices, Choice:new(
    "nyff.ridge_pass",
    "Take the exposed ridge toward the rescue post.",
    nil
))

return node