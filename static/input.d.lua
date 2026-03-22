---@meta Input
---@alias KeyCode "None" | "Backspace" | "Delete" | "Tab" | "Clear" | "Return" | "Pause" | "Escape" | "Space" | "Keypad0" | "Keypad1" | "Keypad2" | "Keypad3" | "Keypad4" | "Keypad5" | "Keypad6" | "Keypad7" | "Keypad8" | "Keypad9" | "KeypadPeriod" | "KeypadDivide" | "KeypadMultiply" | "KeypadMinus" | "KeypadPlus" | "KeypadEnter" | "KeypadEquals" | "UpArrow" | "DownArrow" | "RightArrow" | "LeftArrow" | "Insert" | "Home" | "End" | "PageUp" | "PageDown" | "F1" | "F2" | "F3" | "F4" | "F5" | "F6" | "F7" | "F8" | "F9" | "F10" | "F11" | "F12" | "F13" | "F14" | "F15" | "Alpha0" | "Alpha1" | "Alpha2" | "Alpha3" | "Alpha4" | "Alpha5" | "Alpha6" | "Alpha7" | "Alpha8" | "Alpha9" | "Exclaim" | "DoubleQuote" | "Hash" | "Dollar" | "Percent" | "Ampersand" | "Quote" | "LeftParen" | "RightParen" | "Asterisk" | "Plus" | "Comma" | "Minus" | "Period" | "Slash" | "Colon" | "Semicolon" | "Less" | "Equals" | "Greater" | "Question" | "At" | "LeftBracket" | "Backslash" | "RightBracket" | "Caret" | "Underscore" | "BackQuote" | "A" | "B" | "C" | "D" | "E" | "F" | "G" | "H" | "I" | "J" | "K" | "L" | "M" | "N" | "O" | "P" | "Q" | "R" | "S" | "T" | "U" | "V" | "W" | "X" | "Y" | "Z" | "LeftCurlyBracket" | "Pipe" | "RightCurlyBracket" | "Tilde" | "Numlock" | "CapsLock" | "ScrollLock" | "RightShift" | "LeftShift" | "RightControl" | "LeftControl" | "RightAlt" | "LeftAlt" | "LeftMeta" | "LeftCommand" | "LeftApple" | "LeftWindows" | "RightMeta" | "RightCommand" | "RightApple" | "RightWindows" | "AltGr" | "Help" | "Print" | "SysReq" | "Break" | "Menu" | "WheelUp" | "WheelDown" | "F16" | "F17" | "F18" | "F19" | "F20" | "F21" | "F22" | "F23" | "F24" | "Mouse0" | "Mouse1" | "Mouse2" | "Mouse3" | "Mouse4" | "Mouse5" | "Mouse6" | "JoystickButton0" | "JoystickButton1" | "JoystickButton2" | "JoystickButton3" | "JoystickButton4" | "JoystickButton5" | "JoystickButton6" | "JoystickButton7" | "JoystickButton8" | "JoystickButton9" | "JoystickButton10" | "JoystickButton11" | "JoystickButton12" | "JoystickButton13" | "JoystickButton14" | "JoystickButton15" | "JoystickButton16" | "JoystickButton17" | "JoystickButton18" | "JoystickButton19" | "Joystick1Button0" | "Joystick1Button1" | "Joystick1Button2" | "Joystick1Button3" | "Joystick1Button4" | "Joystick1Button5" | "Joystick1Button6" | "Joystick1Button7" | "Joystick1Button8" | "Joystick1Button9" | "Joystick1Button10" | "Joystick1Button11" | "Joystick1Button12" | "Joystick1Button13" | "Joystick1Button14" | "Joystick1Button15" | "Joystick1Button16" | "Joystick1Button17" | "Joystick1Button18" | "Joystick1Button19" | "Joystick2Button0" | "Joystick2Button1" | "Joystick2Button2" | "Joystick2Button3" | "Joystick2Button4" | "Joystick2Button5" | "Joystick2Button6" | "Joystick2Button7" | "Joystick2Button8" | "Joystick2Button9" | "Joystick2Button10" | "Joystick2Button11" | "Joystick2Button12" | "Joystick2Button13" | "Joystick2Button14" | "Joystick2Button15" | "Joystick2Button16" | "Joystick2Button17" | "Joystick2Button18" | "Joystick2Button19" | "Joystick3Button0" | "Joystick3Button1" | "Joystick3Button2" | "Joystick3Button3" | "Joystick3Button4" | "Joystick3Button5" | "Joystick3Button6" | "Joystick3Button7" | "Joystick3Button8" | "Joystick3Button9" | "Joystick3Button10" | "Joystick3Button11" | "Joystick3Button12" | "Joystick3Button13" | "Joystick3Button14" | "Joystick3Button15" | "Joystick3Button16" | "Joystick3Button17" | "Joystick3Button18" | "Joystick3Button19" | "Joystick4Button0" | "Joystick4Button1" | "Joystick4Button2" | "Joystick4Button3" | "Joystick4Button4" | "Joystick4Button5" | "Joystick4Button6" | "Joystick4Button7" | "Joystick4Button8" | "Joystick4Button9" | "Joystick4Button10" | "Joystick4Button11" | "Joystick4Button12" | "Joystick4Button13" | "Joystick4Button14" | "Joystick4Button15" | "Joystick4Button16" | "Joystick4Button17" | "Joystick4Button18" | "Joystick4Button19" | "Joystick5Button0" | "Joystick5Button1" | "Joystick5Button2" | "Joystick5Button3" | "Joystick5Button4" | "Joystick5Button5" | "Joystick5Button6" | "Joystick5Button7" | "Joystick5Button8" | "Joystick5Button9" | "Joystick5Button10" | "Joystick5Button11" | "Joystick5Button12" | "Joystick5Button13" | "Joystick5Button14" | "Joystick5Button15" | "Joystick5Button16" | "Joystick5Button17" | "Joystick5Button18" | "Joystick5Button19" | "Joystick6Button0" | "Joystick6Button1" | "Joystick6Button2" | "Joystick6Button3" | "Joystick6Button4" | "Joystick6Button5" | "Joystick6Button6" | "Joystick6Button7" | "Joystick6Button8" | "Joystick6Button9" | "Joystick6Button10" | "Joystick6Button11" | "Joystick6Button12" | "Joystick6Button13" | "Joystick6Button14" | "Joystick6Button15" | "Joystick6Button16" | "Joystick6Button17" | "Joystick6Button18" | "Joystick6Button19" | "Joystick7Button0" | "Joystick7Button1" | "Joystick7Button2" | "Joystick7Button3" | "Joystick7Button4" | "Joystick7Button5" | "Joystick7Button6" | "Joystick7Button7" | "Joystick7Button8" | "Joystick7Button9" | "Joystick7Button10" | "Joystick7Button11" | "Joystick7Button12" | "Joystick7Button13" | "Joystick7Button14" | "Joystick7Button15" | "Joystick7Button16" | "Joystick7Button17" | "Joystick7Button18" | "Joystick7Button19" | "Joystick8Button0" | "Joystick8Button1" | "Joystick8Button2" | "Joystick8Button3" | "Joystick8Button4" | "Joystick8Button5" | "Joystick8Button6" | "Joystick8Button7" | "Joystick8Button8" | "Joystick8Button9" | "Joystick8Button10" | "Joystick8Button11" | "Joystick8Button12" | "Joystick8Button13" | "Joystick8Button14" | "Joystick8Button15" | "Joystick8Button16" | "Joystick8Button17" | "Joystick8Button18" | "Joystick8Button19"
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
---@type Event<fun(key: KeyCode)>
Input.KeyDown = nil

---Fires when a key is released.
---@type Event<fun(key: KeyCode)>
Input.KeyUp = nil

---Returns the value of the specified axis.
---@param axisName string
---@return number
function Input:GetAxis(axisName) end

---Returns the value of the specified axis without smoothing filtering.
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

---Returns whether or not the key with the given `keyName` is currently being held down.
---@param keyName string
---@return boolean
function Input:GetKey(keyName) end

---Returns whether or not the key with the given `keyName` was pressed this frame.
---@param keyName string
---@return boolean
function Input:GetKeyDown(keyName) end

---Returns whether or not the key with the given `keyName` was released this frame.
---@param keyName string
---@return boolean
function Input:GetKeyUp(keyName) end

---Returns whether or not the given `mouseButton` is currently being held down.
---@param mouseButton integer
---@return boolean
function Input:GetMouseButton(mouseButton) end

---Returns whether or not the given `mouseButton` was pressed this frame.
---@param mouseButton integer
---@return boolean
function Input:GetMouseButtonDown(mouseButton) end

---Returns whether or not the given `mouseButton` was released this frame.
---@param mouseButton integer
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
---@param screenPoint AnyVector
---@param ignoreList Instance[]?
---@return RayResult?
function Input:ScreenPointToRay(screenPoint, ignoreList) end

---Casts a ray from the `Camera` at the given `viewportPoint` into the world.
---@param viewportPoint AnyVector
---@param ignoreList Instance[]?
---@return RayResult?
function Input:ViewportPointToRay(viewportPoint, ignoreList) end

---Transforms the given `screenPoint` from screen space into viewport space.
---@param screenPoint AnyVector
---@return Vector3
function Input:ScreenToViewportPoint(screenPoint) end

---Transforms the given `screenPoint` from screen space into world space.
---
---World space coordinates can still be calculated even when provided as an off-screen coordinate.
---@param screenPoint AnyVector
---@return Vector3
function Input:ScreenToWorldPoint(screenPoint) end

---Transforms the given `screenPoint` from viewport space into screen space.
---@param viewportPoint AnyVector
---@return Vector3
function Input:ViewportToScreenPoint(viewportPoint) end

---Transforms the given `screenPoint` from viewport space into world space.
---@param viewportPoint AnyVector
---@return Vector3
function Input:ViewportToWorldPoint(viewportPoint) end

---Transforms the given `worldPositon` from world space into screen space.
---@param worldPositon AnyVector
---@return Vector3
function Input:WorldToScreenPoint(worldPositon) end

---Transforms the given `worldPositon` from world space into viewport space.
---@param worldPositon AnyVector
---@return Vector3
function Input:WorldToViewportPoint(worldPositon) end