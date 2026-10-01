local nodeLoader = {}

---@type table<string, Node>
local nodeDictionary = {}
---@type Node
local initialNode = nil
---@type boolean
local errorFound = false

local function loadNode(path)
    ---@type boolean, Node
    local success, node = pcall(require, path)
    
    if not success then
        warn("Failure to load node '" .. path .. "'. Node not found.")
        errorFound = true
        return
    end
    
    if nodeDictionary[node.id] ~= nil then
        warn("Failure to load node '" .. path .. "'. The ID " .. node.id .. " already exists.")
        errorFound = true
        return
    end

    nodeDictionary[node.id] = node
end

--- Load nodes from the choices of a given node
---@param parentNode Node
---@return nil
local function loadNodesFromChoices(parentNode)
    for _, choice in pairs(parentNode.choices) do
        local destinationId = choice.nextEvent

        if not nodeDictionary[destinationId] then
            loadNode("system.nodes." .. destinationId)

            local destinationNode = nodeDictionary[destinationId]

            if destinationNode then
                loadNodesFromChoices(destinationNode)
            end
        end
    end
end

--- Loads all nodes internally
function nodeLoader.loadNodes()
    nodeDictionary = {}

    -- Load initial node
    initialNode = require("system.nodes.prologue")
    nodeDictionary[initialNode.id] = initialNode

    -- Load remaining nodes recursively
    loadNodesFromChoices(initialNode)

    -- Validate node destinations
    for _, node in pairs(nodeDictionary) do
        for _, choice in pairs(node.choices) do
            local destinationId = choice.nextEvent
            local destinationNode = nodeDictionary[destinationId]

            if destinationNode == nil then
                warn("Failure to load node ID '" .. node.id .. "', destination node '" .. destinationId .. "' not found.")
                errorFound = true
            end
        end
    end
end

--- Returns all nodes created by this script
---@return table<string,Node>
function nodeLoader.getNodes()
    return nodeDictionary
end

--- Returns the node associated with the provided ID
---@param nodeId any
---@return Node
function nodeLoader.getNodeById(nodeId)
    return nodeDictionary[nodeId]
end

--- Returns the initial node
---@return Node
function nodeLoader.getInitialNode()
    return initialNode
end

--- Returns true if nodeLoader ran into any errors
---@return boolean
function nodeLoader.hasErrors()
    return errorFound
end

return nodeLoader