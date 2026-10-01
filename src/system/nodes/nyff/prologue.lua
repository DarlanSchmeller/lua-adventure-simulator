-- Constants
local ID = "nyff.prologue"

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

node.description = [[The cold bites through your clothes, and snow stretches in every
direction. You realize you left your backpack behind. All you have to eat is
yesterday's potato, and a thin column of smoke rises somewhere below the ridge.
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.ranger_station",
    "Follow the smoke toward a ranger station.",
    nil
))

table.insert(node.choices, Choice:new(
    "nyff.frozen_lake",
    "Take the shorter trail across the frozen lake.",
    nil
))

table.insert(node.choices, Choice:new(
  "nyff.frozen",
  "Stay in the open and wait for the storm to pass.",
  nil
))

return node