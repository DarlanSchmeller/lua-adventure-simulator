local class = require("middleclass")

---@class Choice
---@field nextEvent string
---@field description string?
---@field requirement function?
local Choice = class("Choice")

function Choice:initialize(id, description, requirement, routine)
    self.nextEvent = id ---@type string
    self.description = description ---@type string
    self.requirement = requirement ---@type fun():boolean
    self.routine = routine ---@type fun():boolean
end

--- Returns if a choice has a requirement to be met
---@return boolean
function Choice:hasRequirement()
    return self.requirement ~= nil
end

--- Executes the requirement function
---@return boolean
function Choice:runRequirement()
    if self.requirement ~= nil and type(self.requirement) == "function" then
        return self.requirement()
    end

    return true
end

--- Executes the choice's routine
---@return nil
function Choice:runRoutine()
    if self.routine ~= nil and type(self.routine) == "function" then
        self.routine()
    end

end

return Choice