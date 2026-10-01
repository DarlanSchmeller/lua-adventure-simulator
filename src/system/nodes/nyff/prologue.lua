-- Constants
local ID = "nyff.start"

-- Dependencies
local Node = require("system.node")
local Choice = require("system.choice")

-- Create node
---@type Node
local node = Node:new(ID)

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

node.title = "Mountains of Nyff"

node.description = [[It's cold, there snow is everywhere, the silence overwhelms you. As if this
was not enough you realize your forgot your backpack, and the only food you have left
is a potato from the day before.
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.frozen",
    "Stay where you are and hope the weather gets better",
    nil
))

return node