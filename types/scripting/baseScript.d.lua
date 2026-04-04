---@meta BaseScript
---`ScriptInstance`s run Lua code and are the base class of all script types. They can be parented to any `Instance`.
---@class (exact) BaseScript: Instance
---Calls the global function named the given `functionName` on a `BaseScript`.
---
---Local functions cannot be ran using this method.
---@field Call fun(self: BaseScript, functionName: string, ...: any)
script = nil