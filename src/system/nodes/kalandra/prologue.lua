-- Constants
local ID = "start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.description = [[The ocean waves dance, the breeze flies past you while the sun
warms you with a pleasant heat, this place is as beautiful as the legends say. But
to your surprise there is no one else here. Your intuition tells you something is
wrong.
]]

node.header = [[
_\/_                 |                _\/_
/o\\             \       /            //o\
 |                 .---.                |
_|_______     --  /     \  --     ______|__
         `~^~^~^~^~^~^~^~^~^~^~^~`
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.start",
    "To the Frozen Mountains of Nyff",
    nil
))

return node