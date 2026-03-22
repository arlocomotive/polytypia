--[[
utility command line program for generating type definitions for garbage like Instance.New and whatnot

example: lua instanceClassNameUtil.lua '---@field GetChildrenOfClass fun(self: Instance, className: "{className}"): {className}[]' a

tested with lua 5.5.0, might work with other versions idk
]]

local INSTANTIATABLE_CLASS_NAMES = {
  "BodyPosition",
  "BoolValue",
  "ColorValue",
  "Decal",
  "Folder",
  "GradientSky",
  "GUI",
  "ImageSky",
  "InstanceValue",
  "IntValue",
  "LocalScript",
  "MeshPart",
  "Model",
  "ModuleScript",
  "NetworkEvent",
  "NPC",
  "NumberValue",
  "Part",
  "Particles",
  "PointLight",
  "ProceduralSky",
  "ScriptInstance",
  "Seat",
  "Signal",
  "Sound",
  "SpotLight",
  "StringValue",
  "Text3D",
  "Tool",
  "Truss",
  "UIButton",
  "UIField",
  "UIHorizontalLayout",
  "UIImage",
  "UILabel",
  "UITextInput",
  "UIVerticalLayout",
  "UIView",
  "Vector3Value",
}

local UNINSTANTIATABLE_CLASS_NAMES = {
  "Backpack",
  "Camera",
  "Environment",
  "Game",
  "Hidden",
  "Lighting",
  "Player",
  "PlayerDefaults",
  "Players",
  "ScriptService",
  "ServerHidden",
  "BaseScript",
  "DynamicInstance",
  "Instance",
  "PlayerGUI",
  "UIHVLayout",
  "SkyBase",
  "SunLight",
  "ValueBase",
  "Climbable",
}

---@type string[]
local allClassNames = {}

---@type table<string, integer>
local classNameReferenceCounts = {}

---@param classNames string[]
local function processClassNames(classNames)
  for _, className in ipairs(classNames) do
    table.insert(allClassNames, className)
    classNameReferenceCounts[className] = (classNameReferenceCounts[className] or 0) + 1
  end
end

processClassNames(INSTANTIATABLE_CLASS_NAMES)
processClassNames(UNINSTANTIATABLE_CLASS_NAMES)
for className, referenceCount in pairs(classNameReferenceCounts) do
  if referenceCount ~= 1 then
    print('warning: class "' .. className .. '" is included in UNINSTANTIATABLE_CLASS_NAMES or INSTANTIATABLE_CLASS_NAMES ' .. tostring(referenceCount) .. " times")
  end
end

print('---@alias InstantiatableClassName "' .. table.concat(INSTANTIATABLE_CLASS_NAMES, '" | "') .. '"')
print('---@alias UninstantiatableClassName "' .. table.concat(UNINSTANTIATABLE_CLASS_NAMES, '" | "') .. '"')

local inputString = arg[1]
if inputString then
  local CLASS_NAME_CATEGORIES = {
    i = INSTANTIATABLE_CLASS_NAMES,
    u = UNINSTANTIATABLE_CLASS_NAMES,
    a = allClassNames,
  }
  
  local classNameCategoryKeys = {}
  for classNameCategoryKey in pairs(CLASS_NAME_CATEGORIES) do
    table.insert(classNameCategoryKeys, classNameCategoryKey)
  end
  
  local inputClassNameCategory = arg[2]
  local classNameCategory = CLASS_NAME_CATEGORIES[inputClassNameCategory]
  if not classNameCategory then
    classNameCategory = allClassNames
    inputClassNameCategory = "a"
  end
  
  print('using class name category "' .. inputClassNameCategory .. '" (valid options: "' .. table.concat(classNameCategoryKeys, '", "') .. '")')
  for _, className in ipairs(classNameCategory) do
    -- have to do this otherwise itll also print an integer and make it way more annoying to copy and paste
    local formattedString = inputString:gsub("{className}", className)
    print(formattedString)
  end
end