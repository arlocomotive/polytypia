---@meta CameraMode
---@enum CameraMode
CameraMode = {
	---`Camera` is controlled by and follows the `Player` (default).
	FollowPlayer = 0,
	---`Camera` is controlled by the `Player` and follows the `Camera.FollowTarget`.
	FollowTarget = 1,
	---`Camera` is controlled by the `Player` and does not follow anything.
	Free = 2,
	---`Camera` is controlled by `LocalScript`s.
	Scripted = 3,
}