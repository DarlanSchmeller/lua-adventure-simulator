-- Constants
local ID = "start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
---@type Node
local node = Node:new(ID)

node.description = [[It's cold, there snow is everywhere, the silence overwhelms you. As if this
was not enough you realize your forgot your backpack, and the only food you have left
is a potato from the day before.
]]

node.header = [[
        _    .  ,   .           .
    *  / \_ *  / \_      _  *        *   /\'__        *
      /    \  /    \,   ((        .    _/  /  \  *'.
 .   /\/\  /\/ :' __ \_  `          _^/  ^/    `--.
    /    \/  \  _/  \-'\      *    /.' ^_   \_   .'\  *
  /\  .-   `. \/     \ /==~=-=~=-=-;.  _/ \ -. `_/   \
 /  `-.__ ^   / .-'.--\ =-=~_=-=~=^/  _ `--./ .-'  `-
/        `.  / /       `.~-^=-=~=^=.-'      '-._ `._
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "To the Sunny Beach of Kalandra",
    nil
))

return node