-- Constants
local ID = "start"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.header = [[
              _                 _                     _____ _                 _       _             
     /\      | |               | |                   / ____(_)               | |     | |            
    /  \   __| |_   _____ _ __ | |_ _   _ _ __ ___  | (___  _ _ __ ___  _   _| | __ _| |_ ___  _ __ 
   / /\ \ / _` \ \ / / _ \ '_ \| __| | | | '__/ _ \  \___ \| | '_ ` _ \| | | | |/ _` | __/ _ \| '__|
  / ____ \ (_| |\ V /  __/ | | | |_| |_| | | |  __/  ____) | | | | | | | |_| | | (_| | || (_) | |   
 /_/    \_\__,_| \_/ \___|_| |_|\__|\__,_|_|  \___| |_____/|_|_| |_| |_|\__,_|_|\__,_|\__\___/|_|   
]]

node.title = "A new adventure"

node.description = [[In a nice sunny morning, you wake up and get ready to set out in a new adventure.
But first, an important decision must be made. Where will you head out to?
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "To the Sunny Beach of Kalandra",
    nil
))

table.insert(node.choices, Choice:new(
    "nyff.start",
    "To the Frozen Mountains of Nyff",
    nil
))

return node