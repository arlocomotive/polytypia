# Polytypia: LuaCATS type definitions for Polytoria 1.0
Polytypia is pretty much complete, and works well enough for scripting a game in my experience, but it's still pretty sloppy. Some parts need a lot of work.

Note
----
LuaCATS casting is important to keep in mind when using Polytypia, since some types are not desired, but can be assumed.

```lua
-- you can cast an expression with --[[@as <type>]]:
local part = game["Environment"]["Part"] --[[@as Part]]

-- you can cast a variable with ---@cast <variable_name> <type>:
---@cast part Part

-- you can also conditionally cast a variable with @cast:
if part:IsA("Part") then
  ---@cast part Part
end

-- Vector2, Vector3, and Vector4 can be cast between each other implicitly
local dot = Vector3.Dot(Vector2.New() --[[@as Vector3]], Vector4.New() --[[@as Vector3]])
```

How to use
----------
Visual Studio Code and [Sumneko's Lua extension](https://open-vsx.org/extension/sumneko/lua) were intended to be used, but any text editor with a Lua language server that supports LuaCATS should also work.

If you're using VSCode, just being navigated to Polytypia should give type definitions (see [`.vscode/settings.json`](.vscode/settings.json)).