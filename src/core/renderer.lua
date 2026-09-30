local renderer = {}
local ansicolors = require("ansicolors")

---@return nil
function renderer.clearTerminal()
    -- Clear using appropriate command based on path
    if package.config:sub(1, 1) == "\\" then
        os.execute("cls")
    else
        os.execute("clear")
    end
end

---@param node Node
---@return nil
function renderer.renderNode(node)
    if node.header then
        print(ansicolors("%{red}" .. node.header))
    end

    print(ansicolors("%{blue}\n------ " .. node.title .. " ------"))
    print(node.description)
end

---@param index number
---@param choice Choice
---@return nil
function renderer.renderChoice(index , choice)
    local colorlist = {"red", "green", "yellow", "blue", "magenta", "cyan"}
    local randomColor = colorlist[math.random(#colorlist)]    

    print(ansicolors("%{" .. randomColor .. "}" .. "       [" .. index .. "] " .. choice.description))
end

return renderer