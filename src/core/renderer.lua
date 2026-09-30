local renderer = {}

---@return nil
function renderer.clearTerminal()
    os.execute("clear")
end

---@return nil
---@param node Node
function renderer.renderNode(node)
    if node.header then
        print(node.header)
    end

    print()
    print("------ " .. node.title .. " ------")
    print(node.description)
end

---@return nil
---@param choice Choice
function renderer.renderChoice(index , choice)
    print("       [" .. index .. "] " .. choice.description)
end

return renderer