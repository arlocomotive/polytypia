---@meta Vector2
---`Vector2` is a 2D vector with X and Y components.
---@class (exact) Vector2
---The X component of the `Vector2`.
---@field x number
---The X component of the `Vector2`.
---@field [0] number
---The Y component of the `Vector2`.
---@field y number
---The Y component of the `Vector2`.
---@field [1] number
---Returns the length of the `Vector2`.
---@field magnitude number
---Returns the squared length of the `Vector2`.
---@field sqrMagnitude number
---Returns the `Vector2` with a `magnitude` of 1.
---@field normalized Vector2
---@operator add(Vector2): Vector2
---@operator sub(Vector2): Vector2
---@operator mul(Vector2): Vector2
---@operator mul(number): Vector2
---@operator div(Vector2): Vector2
---@operator div(number): Vector2
---@operator unm: Vector2

---`Vector2` is a 2D vector with X and Y components.
Vector2 = {}

---Creates a new `Vector2`.
---@return Vector2
function Vector2.New() end

---Creates a new `Vector2` with the `X` and `Y` components set to `n`.
---@param n number
---@return Vector2
function Vector2.New(n) end

---Creates a new `Vector2` with the given `X` and `Y` components.
---@param x number
---@param y number
---@return Vector2
function Vector2.New(x, y) end

---Returns `a` and `b` linearly interpolated by `t`.
---@param a Vector2 Start value. This value is returned when `t` = 0.
---@param b Vector2 End value. This value is returned when `t` = 1.
---@param t number Value used to interpolate between `a` and `b`. Values greater than 1 are clamped to 1. Values less than 0 are clamped to 0.
---@return Vector2
function Vector2.Lerp(a, b, t) end