local class = require("middleclass")

---@class Choice
---@field nextEvent string
---@field description string?
---@field requirement function?
local Choice = class("Choice")

function Choice:initialize(id)
    self.nextEvent = id
    self.description = nil
    self.requirement = nil
end

--- Returns if a choice has a requirement to be met
---@return boolean
function Choice:hasRequirement()
    return self.requirement ~= nil
end

--- Executes the requirement function
---@return boolean
function Choice:runCondition()
    return true
end


return Choice