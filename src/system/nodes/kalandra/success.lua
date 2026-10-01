-- Constants
local ID = "kalandra.success"

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

node.title = "Success!"

node.gameWon = true

node.description = [[
You open the door and find a small altar in the middle of the room. As you approach,
you see a magical scroll on it, containing instructions for casting a spell that
could drive away the Kraken.

You take the scroll to the beach, and the enormous Kraken rises from the depths,
more than 30 meters tall. Terrifying!

With the scroll's help, you successfully cast the spell, and the terrifying creature
returns to its realm, bringing peace and quiet back to the region. In gratitude, the
local leader offers you a generous reward.

Your adventure in Kalandra was full of challenges, but you survived and helped the
local community. With a sense of accomplishment, you set out on your next adventure,
knowing that your skills and courage will be needed again.]]

return node
