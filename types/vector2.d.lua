---@meta Vector2
---`Vector2` is a 2D vector with X and Y components.
---@class (exact) Vector2
---The X component of the `Vector2`.
---@field X number
---The Y component of the `Vector2`.
---@field Y number
---The length of the `Vector2`.
---@field magnitude number
---The squared length of the `Vector2`.
---@field sqrMagnitude number
---Returns the `Vector2` with a `magnitude` of 1.
---@field normalized Vector2
---@operator add(Vector2): Vector2
---@operator sub(Vector2): Vector2
---@operator mul(Vector2): Vector2
---@operator mul(number): Vector2
---@operator div(Vector2): Vector2
---@operator div(number): Vector2
---@operator unm(): Vector2

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
---@param t number Value used to interpolate between `a` and `b`. Values greater than one are clamped to 1. Values less than zero are clamped to 0.
---@return Vector2
function Vector2.Lerp(a, b, t) end

---Returns the angle in degrees between `from` and `to`.
---@param from Vector2 The `Vector2` from which the angular difference is measured.
---@param to Vector2 The `Vector2` to which the angular difference is measured.
---@return number
function Vector2.Angle(from, to) end

---Returns a copy of `vector` with its `magnitude` clamped to `maxLength`.
---@param vector Vector2
---@param maxLength number
---@return Vector2
function Vector2.ClampMagnitude(vector, maxLength) end

---Returns the distance between `a` and `b`.
---@param a Vector2
---@param b Vector2
---@return number
function Vector2.Distance(a, b) end

---Returns the dot product of `a` and `b`.
---@param a Vector2
---@param b Vector2
---@return Vector2
function Vector2.Dot(a, b) end

---Returns `a` and `b` linearly interpolated by `t`.
---@param a Vector2 Start value. This value is returned when `t` = 0.
---@param b Vector2 End value. This value is returned when `t` = 1.
---@param t number Value used to interpolate between `a` and `b`. Values greater than one are clamped to 1. Values less than zero are clamped to 0.
---@return Vector2
function Vector2.Lerp(a, b, t) end

---Returns a `Vector2` that is made from the largest components of `a` and `b`.
---@param a Vector2
---@param b Vector2
---@return Vector2
function Vector2.Max(a, b) end

---Returns a `Vector2` that is made from the smallest components of `a` and `b`.
---@param a Vector2
---@param b Vector2
---@return Vector2
function Vector2.Min(a, b) end

---Returns a `Vector2` between `current` and `target`, moving no farther than `maxDistanceDelta`.
---@param current Vector2 The `Vector2` to move from.
---@param target Vector2 The `Vector2` to move towards.
---@param maxDistanceDelta number Maximum distance to move `current`.
---@return Vector2
function Vector2.MoveTowards(current, target, maxDistanceDelta) end

---Returns a `Vector2` perpendicular to `inDirection`. The result is always rotated 90-degrees in a counter-clockwise direction for a 2D coordinate system where the positive Y axis goes up.
---@param inDirection Vector2 The input direction.
---@return Vector2
function Vector2.Perpendicular(inDirection) end

---Normalizes the `magnitude` of `value` to 1 while maintaining its direction.
---@param value Vector2 The `Vector2` to be normalized.
function Vector2.Normalize(value) end

---Returns `inDirection` reflected off the plane defined by `inNormal`.
---@param inDirection Vector2 The `Vector2` to be reflected in the plane.
---@param inNormal Vector2 The normal `Vector2` that defines the plane of reflection.
---@return Vector2
function Vector2.Reflect(inDirection, inNormal) end

---Returns `a` and `b` multiplied component-wise.
---@param a Vector2
---@param b Vector2
---@return Vector2
function Vector2.Scale(a, b) end

---Returns the signed angle in degrees between `from` and `to`.
---@param from Vector2 The `Vector2` from which the angular difference is measured.
---@param to Vector2 The `Vector2` to which the angular difference is measured.
---@param axis Vector2 The contextual direction for the calculation.
---@return number
function Vector2.SignedAngle(from, to, axis) end

---Returns `current` gradually changed towards `target` over time.
---@param current Vector2 The initial `Vector2`.
---@param target Vector2 The `Vector2` to move towards.
---@param currentVelocity Vector2 The initial velocity. This value is modified by the function each time it runs in the Update function. Pass this parameter as a reference value. ???
---@param smoothTime number Approximately the time it will take to reach the target. A smaller value will reach the target faster.
---@param maxSpeed number? The maximum speed to reach in the motion. By default, there is no maximum speed.
---@param deltaTime number? The time between calls to this function. The default value is Time.deltaTime, such that SmoothDamp is called once per frame. ???
---@return Vector2
function Vector2.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime) end