---@meta ForceMode
---@enum ForceMode
ForceMode = {
  ---Add a continuous force to the `Part`, using its `Mass` (default).
  Force = 0,
  ---Add a continuous acceleration to the `Part`, ignoring its `Mass`.
  Acceleration = 1,
  ---Add an instant force impulse to the `Part`, using its `Mass`.
  Impulse = 2,
  ---Add an instant velocity change to the `Part`, ignoring its `Mass`.
  VelocityChange = 3,
}