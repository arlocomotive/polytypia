---@meta Input
---@alias MouseButton
---| 0 The left mouse button.
---| 1 The right mouse button.
---| 2 The middle mouse button.
---`Input` is a static class used for retrieving user input data, such as the mouse and keyboard.
Input = {}

---Returns whether or not any key is being pressed.
---@type boolean
Input.AnyKey = nil

---Returns whether or not any new key presses happened during the current frame. Held down key presses from previous frames do not count.
---@type boolean
Input.AnyKeyDown = nil

---Returns whether or not the `Player` is focused on an input.
---@type boolean
Input.IsInputFocused = nil

---Returns the current mouse position.
---@type Vector3
Input.MousePosition = nil

---Determines whether or not the cursor is locked.
---@type boolean
Input.CursorLocked = nil

---Determines whether or not the cursor is visible.
---@type boolean
Input.CursorVisible = nil

---Returns the current screen's width.
---@type number
Input.ScreenWidth = nil

---Returns the current screen's height.
---@type number
Input.ScreenHeight = nil

---Fires when a key is pressed.
---@type Event<fun(key: KeyCodeString)>
Input.KeyDown = nil

---Fires when a key is released.
---@type Event<fun(key: KeyCodeString)>
Input.KeyUp = nil

---Returns the value of the axis with the given `axisName` with smooth filtering.
---@param axisName string
---@return number
function Input:GetAxis(axisName) end

---Returns the value of the axis with the given `axisName` without smooth filtering.
---@param axisName string
---@return number
function Input:GetAxisRaw(axisName) end

---Returns whether or not the button with the given `buttonName` is currently being held down.
---@param buttonName string
---@return boolean
function Input:GetButton(buttonName) end

---Returns whether or not the button with the given `buttonName` was pressed this frame.
---@param buttonName string
---@return boolean
function Input:GetButtonDown(buttonName) end

---Returns whether or not the button with the given `buttonName` was released this frame.
---@param buttonName string
---@return boolean
function Input:GetButtonUp(buttonName) end

---Returns whether or not the given `key` is currently being held down.
---@param key KeyCode
---@return boolean
function Input:GetKey(key) end

---Returns whether or not the given `key` was pressed this frame.
---@param key KeyCode
---@return boolean
function Input:GetKeyDown(key) end

---Returns whether or not the given `key` was released this frame.
---@param key KeyCode
---@return boolean
function Input:GetKeyUp(key) end

---Returns whether or not the given `mouseButton` is currently being held down.
---@param mouseButton MouseButton
---@return boolean
function Input:GetMouseButton(mouseButton) end

---Returns whether or not the given `mouseButton` was pressed this frame.
---@param mouseButton MouseButton
---@return boolean
function Input:GetMouseButtonDown(mouseButton) end

---Returns whether or not the given `mouseButton` was released this frame.
---@param mouseButton MouseButton
---@return boolean
function Input:GetMouseButtonUp(mouseButton) end

---Returns the 3D world-space position corresponding to the current `MousePosition`.
---@return Vector3
function Input:GetMouseWorldPosition() end

---Returns the 3D world-space point corresponding to the current `MousePosition`.
---
---Seems to always be identical to `Camera.Position`.
---@return Vector3
function Input:GetMouseWorldPoint() end

---Casts a ray from the `Camera` at the given `screenPoint` into the world.
---@param screenPoint Vector3
---@param ignoreList Instance[]?
---@return RayResult?
function Input:ScreenPointToRay(screenPoint, ignoreList) end

---Casts a ray from the `Camera` at the given `viewportPoint` into the world.
---@param viewportPoint Vector3
---@param ignoreList Instance[]?
---@return RayResult?
function Input:ViewportPointToRay(viewportPoint, ignoreList) end

---Transforms the given `screenPoint` from screen space into viewport space.
---@param screenPoint Vector3
---@return Vector3
function Input:ScreenToViewportPoint(screenPoint) end

---Transforms the given `screenPoint` from screen space into world space.
---
---World space coordinates can still be calculated even when provided as an off-screen coordinate.
---@param screenPoint Vector3
---@return Vector3
function Input:ScreenToWorldPoint(screenPoint) end

---Transforms the given `screenPoint` from viewport space into screen space.
---@param viewportPoint Vector3
---@return Vector3
function Input:ViewportToScreenPoint(viewportPoint) end

---Transforms the given `screenPoint` from viewport space into world space.
---@param viewportPoint Vector3
---@return Vector3
function Input:ViewportToWorldPoint(viewportPoint) end

---Transforms the given `worldPoint` from world space into screen space.
---@param worldPoint Vector3
---@return Vector3
function Input:WorldToScreenPoint(worldPoint) end

---Transforms the given `worldPoint` from world space into viewport space.
---@param worldPoint Vector3
---@return Vector3
function Input:WorldToViewportPoint(worldPoint) end