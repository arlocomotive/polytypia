---@meta json
---`json` is a module which allows for scripts to interface with JSON data representation by converting it to a `table` and vice versa.
json = {}

---Returns whether or not the given `jsonString` is a null read from a json string.
---@param jsonString string
---@return boolean
function json.isNull(jsonString) end

---Returns the representation of null in a json.
---@return string
function json.null() end

---Returns a `table` with the contents of the given `jsonString`.
---@param jsonString string
---@return table
function json.parse(jsonString) end

---Returns a json string with the contents of the given `data`.
---@param data table
---@return string
function json.serialize(data) end