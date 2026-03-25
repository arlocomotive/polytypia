---@meta ParticleShape
---@enum ParticleShape
ParticleShape = {
  ---Emit from a sphere (default).
  Sphere = 0,
  ---Emit from a half-sphere.
  Hemisphere = 1,
  ---Emit from the base of a cone.
  Cone = 2,
  ---Emit from the volume of a box.
  Box = 3,
  ---Emit from a donut.
  Donut = 4,
  ---Emit from a circle.
  Circle = 5,
  ---Emit from a rectangle.
  Rectangle = 6,
}