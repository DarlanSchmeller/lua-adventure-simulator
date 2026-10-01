-- Constants
local ID = "nyff.ice_cave"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.title = "The Ice Caves"

node.description = [[The opening leads into a web of ice caves. Blue light filters through
the ceiling, and old climbing markers point deeper into the mountain. A narrow
tunnel climbs toward the ridge.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.ridge_pass",
    "Follow the climbing markers through the narrow tunnel.",
    nil
))

table.insert(node.choices, Choice:new(
    "nyff.rescue",
    "Use the emergency beacon in an abandoned climber's pack.",
    nil
))

table.insert(node.choices, Choice:new(
    "nyff.crevasse",
    "Climb down into a deep shaft to search for another exit.",
    nil
))

return node