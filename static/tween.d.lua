---@meta Tween
---`Tween` is a static class used for tweening data types and properties, such as `Color` and `Position`.
Tween = {}

---Tweens the given `startValue` to the given `endValue` over the given `time` seconds, calling the given `stepCallback` with the tweened value.
---@param startValue Color
---@param endValue Color
---@param time number
---@param stepCallback fun(value: Color)
---@param type TweenType
---@param finishCallback fun()
---@return integer tweenID
function Tween:TweenColor(startValue, endValue, time, stepCallback, type, finishCallback) end

---Tweens the given `startValue` to the given `endValue` over the given `time` seconds, calling the given `stepCallback` with the tweened value.
---@param startValue number
---@param endValue number
---@param time number
---@param stepCallback fun(value: number)
---@param type TweenType
---@param finishCallback fun()
---@return integer tweenID
function Tween:TweenNumber(startValue, endValue, time, stepCallback, type, finishCallback) end

---Tweens the `Position` of the given `target` to the given `destination` over the given `time` seconds.
---@param target DynamicInstance
---@param destination Vector3
---@param time number
---@param type TweenType
---@param finishCallback fun()
---@return integer tweenID
function Tween:TweenPosition(target, destination, time, type, finishCallback) end

---Tweens the `Rotation` of the given `target` to the given `destination` over the given `time` seconds.
---@param target DynamicInstance
---@param destination Vector3
---@param time number
---@param type TweenType
---@param finishCallback fun()
---@return integer tweenID
function Tween:TweenRotation(target, destination, time, type, finishCallback) end

---Tweens the `Size` of the given `target` to the given `destination` over the given `time` seconds.
---@param target DynamicInstance
---@param destination Vector3
---@param time number
---@param type TweenType
---@param finishCallback fun()
---@return integer tweenID
function Tween:TweenSize(target, destination, time, type, finishCallback) end

---Tweens the given `startValue` to the given `endValue` over the given `time` seconds, calling the given `stepCallback` with the tweened value.
---@param startValue Vector2
---@param endValue Vector2
---@param time number
---@param stepCallback fun(value: Vector2)
---@param type TweenType
---@param finishCallback fun()
---@return integer tweenID
function Tween:TweenVector2(startValue, endValue, time, stepCallback, type, finishCallback) end

---Tweens the given `startValue` to the given `endValue` over the given `time` seconds, calling the given `stepCallback` with the tweened value.
---@param startValue Vector3
---@param endValue Vector3
---@param time number
---@param stepCallback fun(value: Vector3)
---@param type TweenType
---@param finishCallback fun()
---@return integer tweenID
function Tween:TweenVector3(startValue, endValue, time, stepCallback, type, finishCallback) end

---Cancels the tween with the given `tweenID`.
---@param tweenID integer
function Tween:Cancel(tweenID) end