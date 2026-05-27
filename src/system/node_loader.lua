local nodeLoader = {}

---@type table<string, Node>
local nodeDictionary = {}
---@type Node
local initialNode = nil

local function loadNode(path)
    ---@type boolean, Node
    local success, node = pcall(require, path)
    
    if not success then
        warn("Failure to load node" .. path .. ". Node not found.")
        return
    end
    
    if nodeDictionary[node.id] ~= nil then
        warn("Failure to load node" .. path .. ". The ID " .. node.id .. " already exists.")
        return
    end

    nodeDictionary[node.id] = node
end

--- Loads all nodes internally
function nodeLoader.loadNodes()
    nodeDictionary = {}

    initialNode = require("system.nodes.start")
    nodeDictionary[initialNode.id] = initialNode
    loadNode("system.nodes.nyff.prologue")
    loadNode("system.nodes.kalandra.prologue")
end

--- Returns all nodes created by this script
---@return table<string,Node>
function nodeLoader.getNodes()
    return nodeDictionary
end

--- Returns the node associated with the provided ID
---@param nodeId any
---@return Node
function nodeLoader.getNode(nodeId)
    return nodeDictionary[nodeId]
end

--- Returns the initial node
---@return Node
function nodeLoader.getInitialNode()
    return initialNode
end

return nodeLoader