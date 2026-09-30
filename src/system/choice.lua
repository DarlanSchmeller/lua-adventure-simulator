local class = require("middleclass")

---@class Choice
---@field nextEvent string
---@field description string?
---@field requirement function?
local Choice = class("Choice")

function Choice:initialize(id, description, requirement)
    self.nextEvent = id
    self.description = description
    self.requirement = requirement
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