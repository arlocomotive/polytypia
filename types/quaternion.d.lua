---@meta Quaternion
---@class (exact) Quaternion
---The X component of the `Quaternion`.
---@field x number
---The Y component of the `Quaternion`.
---@field y number
---The Z component of the `Quaternion`.
---@field z number
---The W component of the `Quaternion`.
---@field w number
---Returns the euler angle representation of the `Quaternion`.
---@field eulerAngles Quaternion
---Returns the `Quaternion` with a magnitude of 1.
---@field normalized Quaternion

Quaternion = {}

---Creates a new `Quaternion`.
---@return Quaternion
function Quaternion.New() end

---Creates a new `Quaternion` with the `x`, `y`, `z`, and `w` components set to `n`.
---@param n number
---@return Quaternion
function Quaternion.New(n) end

---Creates a new `Quaternion` with the given `x`, `y`, `z`, and `w` components.
---@param x number
---@param y number
---@param z number
---@param w number
---@return Quaternion
function Quaternion.New(x, y, z, w) end

---Creates a new `Quaternion` which rotates `angle` degrees around `axis`.
---@param angle number
---@param axis Vector3
---@return Quaternion
function Quaternion.AngleAxis(angle, axis) end

---Creates a new `Quaternion` from `fromDirection` to `toDirection`.
---@param fromDirection Vector3
---@param toDirection Vector3
---@return Quaternion
function Quaternion.FromToRotation(fromDirection, toDirection) end

---Creates a new `Quaternion` with the given `forward` and `upwards` directions.
---@param forward Vector3
---@param upwards Vector3?
---@return Quaternion
function Quaternion.LookRotation(forward, upwards) end

---Returns a `Quaternion` from the given Euler angles.
---@param x number
---@param y number
---@param z number
---@return Quaternion
function Quaternion.Euler(x, y, z) end

---Returns the angle in degrees between `a` and `b`. The resulting angle ranges from 0 to 180.
---@param a Quaternion
---@param b Quaternion
---@return number
function Quaternion.Angle(a, b) end

---Returns the dot product of `a` and `b`.
---@param a Quaternion
---@param b Quaternion
---@return Quaternion
function Quaternion.Dot(a, b) end

---Returns the inverse of `rotation`.
---@param rotation Quaternion
---@return Quaternion
function Quaternion.Inverse(rotation) end

---Returns `a` and `b` linearly interpolated by `t`, then normalized.
---@param a Quaternion Start unit `Quaternion` value. This value is returned when `t` = 0.
---@param b Quaternion End unit `Quaternion` value. This value is returned when `t` = 1.
---@param t number Value used to interpolate between `a` and `b`. Values greater than one are clamped to 1. Values less than zero are clamped to 0.
---@return Quaternion
function Quaternion.Lerp(a, b, t) end

---Returns `a` and `b` linearly interpolated by `t`, then normalized.
---@param a Quaternion Start unit `Quaternion` value. This value is returned when `t` = 0.
---@param b Quaternion End unit `Quaternion` value. This value is returned when `t` = 1.
---@param t number Value used to interpolate between or beyond `a` and `b`.
---@return Quaternion
function Quaternion.LerpUnclamped(a, b, t) end

---Normalizes the `magnitude` of `value` to 1 while maintaining its rotation.
---@param q Quaternion The quaternion to be normalized.
function Vector3.Normalize(q) end

---Rotates a `Quaternion` `from` towards `to`.
---@param from Quaternion The unit `Quaternion` to be aligned with `to`.
---@param to Quaternion The target unit `Quaternion`.
---@param maxDegreesDelta number The maximum angle in degrees allowed for this rotation.
---@return Quaternion
function Vector3.RotateTowards(from, to, maxDegreesDelta) end

---Returns `a` and `b` spherically interpolated by `t`.
---@param a Quaternion Start unit `Quaternion` value. This value is returned when `t` = 0.
---@param b Quaternion End unit `Quaternion` value. This value is returned when `t` = 1.
---@param t number Value used to interpolate between `a` and `b`. Values greater than one are clamped to 1. Values less than zero are clamped to 0.
---@return Quaternion
function Quaternion.Slerp(a, b, t) end

---Returns `a` and `b` spherically interpolated by `t`.
---@param a Quaternion Start unit `Quaternion` value. This value is returned when `t` = 0.
---@param b Quaternion End unit `Quaternion` value. This value is returned when `t` = 1.
---@param t number Value used to interpolate between or beyond `a` and `b`.
---@return Quaternion
function Quaternion.SlerpUnclamped(a, b, t) end