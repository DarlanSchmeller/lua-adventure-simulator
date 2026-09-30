-- Constants
local ID = "kalandra.start"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.header = [[
_\/_                 |                _\/_
/o\\             \       /            //o\
 |                 .---.                |
_|_______     --  /     \  --     ______|__
         `~^~^~^~^~^~^~^~^~^~^~^~`
]]

node.title = "Beaches of Kalandra"

node.description = [[The ocean waves dance, the breeze flies past you while the sun
warms you with a pleasant heat, this place is as beautiful as the legends say. But
to your surprise there is no one else here. Your intuition tells you something is
wrong.
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.start",
    "To the Frozen Mountains of Nyff",
    nil
))

return node