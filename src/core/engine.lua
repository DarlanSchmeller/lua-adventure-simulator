local class = require("middleclass")
local nodeLoader = require("system.node_loader")
local renderer = require("core.renderer")

---@class Engine
local Engine = class("Engine")

---@return nil
function Engine:initialize()
end

---@return nil
function Engine:runMainLoop()
    while not game.isOver do
        local node = game.activeNode

        -- Clean terminal
        renderer.clearTerminal()

        -- Print node
        renderer.renderNode(node)

        -- Get valid choices
        local validChoices = Engine:getValidChoices(node.choices)

        -- Show choices
        for index, choice in ipairs(validChoices) do
            renderer.renderChoice(index, choice)
        end

        -- Ask user what he wants to do
        local playerChoice = Engine:collectPlayerChoice(validChoices) ---@type Choice
    
        -- Advance to next node
        game.activeNode = nodeLoader.getNodeById(playerChoice.nextEvent)
    end
end

---@param choices table
---@return table
function Engine:getValidChoices(choices)
    local validChoices = {}
    
    for _, choice in ipairs(choices) do
        -- Verify if there is a requirement and if it's met
        if not choice:hasRequirement() or choice:runCondition() then
            table.insert(validChoices, choice)
        end
    end

    return validChoices
end

---@param validChoices table
---@return Choice
function Engine:collectPlayerChoice(validChoices)
    local playerChoice = nil 
    while playerChoice == nil do 
        io.write('> ')
        local input = tonumber(io.read())

        playerChoice = validChoices[input]
        
        if not playerChoice == nil then
            break
        end

        io.write("Please select an existing option.\n")
    end

    return playerChoice
end

return Engine