package.path = package.path .. ";./src/?.lua;./src/?/init.lua"

local game = require("core.game")

game.start()