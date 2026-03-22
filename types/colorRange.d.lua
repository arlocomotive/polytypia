---@meta ColorRange
---`ColorRange` is a data type that represents a range of 2 `Color`s.
---@class (exact) ColorRange
---The minimum value.
---@field min Color
---The maximum value.
---@field max Color
---Linearly interpolates `min` and `max` by `t`.
---@field Lerp fun(self: ColorRange, t: number): Color

ColorRange = {}

---Creates a new `ColorRange` with the given `min` and `max` values.
---@param min Color
---@param max Color
function ColorRange.New(min, max) end