---@meta

---Runs the given `callback` in a separate thread without yielding the current thread.
---@param callback fun()
function spawn(callback) end

---Yields the current thread until the given `seconds` have elapsed.
---
---Note that this does not work as expected in a `coroutine`. It will `coroutine.yield` the given `seconds` and not actually wait.
---
---TODO figure out what this returns, seems to be the current time?
---@param seconds number?
---@return number
function wait(seconds) end

---Returns the elapsed time in seconds since the current game started running.
---@return number secondsElapsed
function time() end

---@type Camera
---
---The local `Player`'s `Camera`.
Camera = nil

---@type fun(deltaTime: number)?
---
---This will be renamed to _Update in 2.0.
_update = nil

---@type fun(deltaTime: number)?
---
---This will be renamed to _FixedUpdate in 2.0.
_fixed_update = nil

---Returns the unicode codepoints of the characters s[i], s[i+1], ..., s[j].
---
---@deprecated This is from MoonSharp and may not stay in 2.0. Do not rely on this.
---@param s string | number
---@param i integer?
---@param j integer?
---@return integer ...
function string.unicode(s, i, j) end

---Returns whether or not `str2` is contained inside `str1`.
---
---@deprecated This is from MoonSharp and may not stay in 2.0. Do not rely on this.
---@param str1 string
---@param str2 string
---@return boolean
function string.contains(str1, str2) end

---Returns whether or not `str2` is contained at the very start of `str1`.
---
---@deprecated This is from MoonSharp and may not stay in 2.0. Do not rely on this.
---@param str1 string
---@param str2 string
---@return boolean
function string.startsWith(str1, str2) end

---Returns whether or not `str2` is contained at the very end of `str1`.
---
---@deprecated This is from MoonSharp and may not stay in 2.0. Do not rely on this.
---@param str1 string
---@param str2 string
---@return boolean
function string.endsWith(str1, str2) end

---@deprecated This is from MoonSharp and may not stay in 2.0. Do not rely on this.
---
---@see table.pack
pack = table.pack

---@deprecated This is from MoonSharp and may not stay in 2.0. Do not rely on this.
---
---@see table.unpack
unpack = table.unpack

---@deprecated This is from MoonSharp and is likely not to stay in 2.0. Do not rely on this.
_MOONSHARP = {
  version = "",
  luacompat = "",
  platform = "",
  is_aot = false,
  is_unity = false,
  is_mono = false,
  is_clr4 = false,
  is_pcl = false,
  banner = "",
}