-- Constants
local ID = "nyff.shelter"

-- Dependencies
local Node = require("system.node")

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

node.title = "Safe Until Dawn"

node.gameWon = true

node.description = [[You make it back to the ranger station and keep the fire alive
through the night. By morning the storm has passed, and a search team finds you on
its way up the mountain. You are safe.]]

return node
