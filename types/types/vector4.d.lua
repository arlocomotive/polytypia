---@meta Vector4
---`Vector4` is a 4D vector with X, Y, Z and W components.
---@class (exact) Vector4
---The X component of the `Vector4`.
---@field x number
---The X component of the `Vector4`.
---@field [0] number
---The Y component of the `Vector4`.
---@field y number
---The Y component of the `Vector4`.
---@field [1] number
---The Z component of the `Vector4`.
---@field z number
---The Z component of the `Vector4`.
---@field [2] number
---The W component of the `Vector4`.
---@field w number
---The W component of the `Vector4`.
---@field [3] number
---The length of the `Vector4`.
---@field magnitude number
---The squared length of the `Vector4`.
---@field sqrMagnitude number
---Returns the `Vector4` with a `magnitude` of 1.
---@field normalized Vector4
---@operator add(Vector4): Vector4
---@operator sub(Vector4): Vector4
---@operator mul(number): Vector4
---@operator div(number): Vector4
---@operator unm: Vector4

---`Vector4` is a 4D vector with X, Y, Z and W components.
Vector4 = {}

---Creates a new `Vector4`.
---@return Vector4
function Vector4.New() end

---Creates a new `Vector3` with the `X`, `Y`, and `Z` components set to `n`.
---
---@deprecated This likely does not work as intended.
---@param n number
---@return Vector3
function Vector4.New(n) end

---Creates a new `Vector4` with the given `X` and `Y` components, and `Z` and `W` set to 0.
---@param x number
---@param y number
---@return Vector4
function Vector4.New(x, y) end

---Creates a new `Vector4` with the given `X`, `Y`, and `Z` components, and `Z` set to 0.
---@param x number
---@param y number
---@param z number
---@return Vector4
function Vector4.New(x, y, z) end

---Creates a new `Vector4` with the given `X`, `Y`, `Z`, and `W` components.
---@param x number
---@param y number
---@param z number
---@param w number
---@return Vector4
function Vector4.New(x, y, z, w) end