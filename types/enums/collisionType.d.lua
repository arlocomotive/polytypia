---@meta CollisionType
---@enum CollisionType
CollisionType = {
  ---Collisions use the `Bounds` of the `Part`.
  Bounds = 0,
  ---Collisions use a convex hull representation of the `MeshPart`'s mesh.
  Convex = 1,
  ---Collisions use the `MeshPart`'s mesh as is.
  Exact = 2,
}