-- Constants
local ID = "kalandra.sun_bath"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.header = [[
 __  __     ______     __  __        __     __     __     __   __    
/\ \_\ \   /\  __ \   /\ \/\ \      /\ \  _ \ \   /\ \   /\ "-.\ \   
\ \____ \  \ \ \/\ \  \ \ \_\ \     \ \ \/ ".\ \  \ \ \  \ \ \-.  \  
 \/\_____\  \ \_____\  \ \_____\     \ \__/".~\_\  \ \_\  \ \_\\"\_\ 
  \/_____/   \/_____/   \/_____/      \/_/   \/_/   \/_/   \/_/ \/_/ 
                                                                     
]]

node.title = "The End"

node.gameWon = true

node.description = [[You spent a few more hours relaxing on the beach. When you woke up,
you decided to head home.]]

return node
