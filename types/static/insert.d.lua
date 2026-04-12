---@meta Insert
---`Insert` is a static class used for inserting user-generated models into your game via scripts.
Insert = {}

---Inserts the given `modelID` into the game, with an optional callback for when the model successfully loads.
---@param modelID integer
---@param callback fun(model: Instance)
function Insert:Model(modelID, callback) end