-- Constants
local ID = "nyff.rescue"

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

node.title = "Rescued"

node.gameWon = true

node.description = [[
You reach the ridge and fire the emergency beacon. A rescue team spots the signal
through the storm and guides you down to safety.

The people at the ranger station give you warm food and a place to rest. You made
it through the mountains of Nyff and lived to tell the tale.]]

return node
