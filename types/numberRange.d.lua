---@meta NumberRange
---`NumberRange` is a data type that represents a range of 2 `number`s.
---@class (exact) NumberRange
---The minimum value.
---@field min number
---The maximum value.
---@field max number
---Linearly interpolates `min` and `max` by `t`.
---@field Lerp fun(self: NumberRange, t: number): number

NumberRange = {}

---Creates a new NumberRange with the given `min` and `max` values.
---@param min number
---@param max number
function NumberRange.New(min, max) end