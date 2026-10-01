-- Constants
local ID = "nyff.ridge_pass"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.title = "The Knife-Edge Ridge"

node.description = [[The tunnel opens onto a narrow ridge above the clouds. The wind
nearly knocks you off your feet. Far across the pass, a rescue station's signal lamp
blinks through the snow.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.rescue",
    "Cross the ridge and signal the rescue station.",
    nil
))

table.insert(node.choices, Choice:new(
    "nyff.shelter",
    "Retreat to the ranger station and wait out the storm.",
    nil
))

table.insert(node.choices, Choice:new(
    "nyff.avalanche",
    "Climb over the exposed snow cornice.",
    nil
))

return node