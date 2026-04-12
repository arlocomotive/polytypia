---@meta BaseScript
---`ScriptInstance`s run Lua code and are the base class of all script types. They can be parented to any `Instance`.
---@class (exact) BaseScript: Instance
---Calls the `BaseScript`'s global function named the given `functionName`.
---@field Call fun(self: BaseScript, functionName: string, ...: any)
script = nil