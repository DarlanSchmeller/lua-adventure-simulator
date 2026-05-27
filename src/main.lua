package.path = package.path
    .. ";./src/?.lua"
    .. ";./vendor/?.lua"

-- Enable warnings
warn("@on")

local game = require("core.game")

game.start()