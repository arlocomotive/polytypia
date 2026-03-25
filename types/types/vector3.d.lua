---@meta Vector3
---`Vector3` is a 3D vector with X, Y and Z components.
---@class (exact) Vector3
---The X component of the `Vector3`.
---@field x number
---The X component of the `Vector3`.
---@field [0] number
---The Y component of the `Vector3`.
---@field y number
---The Y component of the `Vector3`.
---@field [1] number
---The Z component of the `Vector3`.
---@field z number
---The Z component of the `Vector3`.
---@field [2] number
---The length of the `Vector3`.
---@field magnitude number
---The squared length of the `Vector3`.
---@field sqrMagnitude number
---Returns the `Vector3` with a `magnitude` of 1.
---@field normalized Vector3
---@operator add(Vector3): Vector3
---@operator sub(Vector3): Vector3
---@operator mul(number): Vector3
---@operator div(number): Vector3
---@operator unm: Vector3

---`Vector3` is a 3D vector with X, Y and Z components.
Vector3 = {}

---Creates a new `Vector3`.
---@return Vector3
function Vector3.New() end

---Creates a new `Vector3` with the `X`, `Y`, and `Z` components set to `n`.
---@param n number
---@return Vector3
function Vector3.New(n) end

---Creates a new `Vector3` with the given `X` and `Y` components, and `Z` set to 0.
---@param x number
---@param y number
---@return Vector3
function Vector3.New(x, y) end

---Creates a new `Vector3` with the given `X`, `Y`, and `Z` components.
---@param x number
---@param y number
---@param z number
---@return Vector3
function Vector3.New(x, y, z) end

---Returns the angle in degrees between `from` and `to`.
---@param from Vector3 The `Vector3` from which the angular difference is measured.
---@param to Vector3 The `Vector3` to which the angular difference is measured.
---@return number
function Vector3.Angle(from, to) end

---Returns a copy of `vector` with its `magnitude` clamped to `maxLength`.
---@param vector Vector3
---@param maxLength number
---@return Vector3
function Vector3.ClampMagnitude(vector, maxLength) end

---Returns the cross product of `a` and `b`.
---@param a Vector3
---@param b Vector3
---@return Vector3
function Vector3.Cross(a, b) end

---Returns the distance between `a` and `b`.
---@param a Vector3
---@param b Vector3
---@return number
function Vector3.Distance(a, b) end

---Returns the dot product of `a` and `b`.
---@param a Vector3
---@param b Vector3
---@return Vector3
function Vector3.Dot(a, b) end

---Returns `a` and `b` linearly interpolated by `t`.
---@param a Vector3 Start value. This value is returned when `t` = 0.
---@param b Vector3 End value. This value is returned when `t` = 1.
---@param t number Value used to interpolate between `a` and `b`. Values greater than one are clamped to 1. Values less than zero are clamped to 0.
---@return Vector3
function Vector3.Lerp(a, b, t) end

---Returns a `Vector3` that is made from the largest components of `a` and `b`.
---@param a Vector3
---@param b Vector3
---@return Vector3
function Vector3.Max(a, b) end

---Returns a `Vector3` that is made from the smallest components of `a` and `b`.
---@param a Vector3
---@param b Vector3
---@return Vector3
function Vector3.Min(a, b) end

---Returns a `Vector3` between `current` and `target`, moving no farther than `maxDistanceDelta`.
---@param current Vector3 The `Vector3` to move from.
---@param target Vector3 The `Vector3` to move towards.
---@param maxDistanceDelta number Maximum distance to move `current`.
---@return Vector3
function Vector3.MoveTowards(current, target, maxDistanceDelta) end

---Normalizes the `magnitude` of `value` to 1 while maintaining its direction.
---@param value Vector3 The `Vector3` to be normalized.
function Vector3.Normalize(value) end

---Returns `vector` projected onto `onNormal`.
---@param vector Vector3 The `Vector3` to project.
---@param onNormal Vector3 The `Vector3` to project onto. This value doesn't need to be normalized.
---@return Vector3
function Vector3.Project(vector, onNormal) end

---Returns `vector` projected onto the plane defined by `planeNormal`.
---@param vector Vector3 The `Vector3` to project on the plane.
---@param planeNormal Vector3 The normal `Vector3` which defines the plane to project on.
---@return Vector3
function Vector3.ProjectOnPlane(vector, planeNormal) end

---Returns `inDirection` reflected off the plane defined by `inNormal`.
---@param inDirection Vector3 The `Vector3` to be reflected in the plane.
---@param inNormal Vector3 The normal `Vector3` that defines the plane of reflection.
---@return Vector3
function Vector3.Reflect(inDirection, inNormal) end

---Returns `current` rotated towards `target`.
---@param current Vector3 The `Vector3` being managed.
---@param target Vector3 The `Vector3`.
---@param maxRadiansDelta number The maximum angle in radians allowed for this rotation.
---@param maxMagnitudeDelta number The maximum allowed change in `Vector3.magnitude` for this rotation.
---@return Vector3
function Vector3.RotateTowards(current, target, maxRadiansDelta, maxMagnitudeDelta) end

---Returns `a` and `b` multiplied component-wise.
---@param a Vector3
---@param b Vector3
---@return Vector3
function Vector3.Scale(a, b) end

---Returns the signed angle in degrees between `from` and `to`.
---@param from Vector3 The `Vector3` from which the angular difference is measured.
---@param to Vector3 The `Vector3` to which the angular difference is measured.
---@param axis Vector3 The contextual direction for the calculation.
---@return number
function Vector3.SignedAngle(from, to, axis) end

---Returns `a` and `b` spherically interpolated by `t`.
---@param a Vector3 Start value. This value is returned when `t` = 0.
---@param b Vector3 End value. This value is returned when `t` = 1.
---@param t number Value used to interpolate between `a` and `b`. Values greater than one are clamped to 1. Values less than zero are clamped to 0.
---@return Vector3
function Vector3.Slerp(a, b, t) end

---Returns `a` and `b` spherically interpolated by `t`.
---@param a Vector3 Start value. This value is returned when `t` = 0.
---@param b Vector3 End value. This value is returned when `t` = 1.
---@param t number Value used to interpolate between or beyond `a` and `b`.
---@return Vector3
function Vector3.SlerpUnclamped(a, b, t) end

---Returns `current` gradually changed towards `target` over time.
---@param current Vector3 The initial `Vector3`.
---@param target Vector3 The `Vector3` to move towards.
---@param currentVelocity Vector3 The initial velocity. This value is modified by the function each time it runs in the Update function. Pass this parameter as a reference value. ???
---@param smoothTime number Approximately the time it will take to reach the target. A smaller value will reach the target faster.
---@param maxSpeed number? The maximum speed to reach in the motion. By default, there is no maximum speed.
---@param deltaTime number? The time between calls to this function. The default value is Time.deltaTime, such that SmoothDamp is called once per frame. ???
---@return Vector3
function Vector3.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime) end