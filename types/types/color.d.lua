---@meta Color
---Color is a data type that represents a color.
---@class (exact) Color
---Red color component of the `Color`.
---@field r number
---Green color component of the `Color`.
---@field g number
---Blue color component of the `Color`.
---@field b number
---Alpha (opacity) color component of the `Color`. 0 is fully transparent and 1 is fully visible.
---@field a number
---Returns the `Color` with the gamma curve applied.
---@field gamma Color
---Returns the `Color` with the inverse of sRGB gamma curve applied.
---@field linear Color
---Returns the maximum color component of the `Color`. Includes `r`, `g`, and `b`, but not `a`.
---@field maxColorComponent number

---`Color` is a data type that represents a `Color`.
Color = {}

---Creates a new black `Color`.
---@return Color
function Color.New() end

---Creates a new opaque `Color` with the `r`, `g` and `b` components set to `n`.
---@param n number
---@return Color
function Color.New(n) end

---Creates a new opaque `Color` with the given `r`, `g`, and `b` components.
---@param r number
---@param g number
---@param b number
---@return Color
function Color.New(r, g, b) end

---Creates a new `Color` with the given `r`, `g`, and `b` components.
---@param r number
---@param g number
---@param b number
---@param a number
---@return Color
function Color.New(r, g, b, a) end

---Creates a new opaque `Color` from the given `HEX`.
---@param HEX string A string with the format `#rrggbb` (case insensitive).
---@return Color
function Color.FromHex(HEX) end

---Returns a random opaque `Color`.
---@return Color
function Color.Random() end

---Returns an opaque `Color` from the given `h`, `s`, and `v` values.
---@param h number Hue [0..1].
---@param s number Saturation [0..1].
---@param v number Brightness value [0..1].
---@param hdr boolean? Output HDR colours. If true, the returned colour will not be clamped to [0..1].
---@return Color
function Color.HSVToRGB(h, s, v, hdr) end

---Returns `a` and `b` linearly interpolated by `t`.
---@param a Color Start value. This value is returned when `t` = 0.
---@param b Color End value. This value is returned when `t` = 1.
---@param t number Value used to interpolate between `a` and `b`. Values greater than one are clamped to 1. Values less than zero are clamped to 0.
---@return Color
function Color.Lerp(a, b, t) end

---Returns `a` and `b` linearly interpolated by `t`.
---@param a Color Start value. This value is returned when `t` = 0.
---@param b Color End value. This value is returned when `t` = 1.
---@param t number Value used to interpolate between or beyond `a` and `b`.
---@return Color
function Color.LerpUnclamped(a, b, t) end