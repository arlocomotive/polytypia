---@meta Bounds
---@class (exact) Bounds
---The center of the `Bounds`.
---@field center Vector3
---The extents of the `Bounds`. This is always half of `Bounds.size`.
---@field extents Vector3
---The maximal point of the `Bounds`. This is always equal to `Bounds.center` + `Bounds.extents`.
---@field max Vector3
---The minimal point of the `Bounds`. This is always equal to `Bounds.center` - `Bounds.extents`.
---@field min Vector3
---The total size of the `Bounds`. This is always twice of `Bounds.extents`.
---@field size Vector3
---The closest `Vector3` to the given `point` on the `Bounds`.
---@field ClosestPoint fun(self: Bounds, point: Vector3): Vector3
---Returns whether or not the given `point` is in the `Bounds`.
---@field Contains fun(self: Bounds, point: Vector3): boolean
---Grows the `Bounds` to include the given `point`.
---@field Encapsulate fun(self: Bounds, point: Vector3)
---Expands the `Bounds` by increasing its `size` by the given `amount` along each side.
---@field Expand fun(self: Bounds, amount: number)
---Returns whether or not the given `bounds` intersects with the `Bounds`.
---@field Intersects fun(self: Bounds, bounds: boolean): boolean
---Sets the `Bounds` to the given `min` and `max` values.
---@field SetMinMax fun(self: Bounds, min: Vector3, max: Vector3)
---Returns the smallest squared distance between the given `point` and the `Bounds`.
---@field SqrDistance fun(self: Bounds, point: Vector3): number

Bounds = {}

---Creates a new identity `Bounds`.
---@return Bounds
function Bounds.New() end

---Creates a new `Bounds` with the given `center` and `size`.
---@param center Vector3 The location of the origin of the `Bounds`.
---@param size Vector3 The dimensions of the `Bounds`.
---@return Bounds
function Bounds.New(center, size) end