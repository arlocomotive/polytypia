---@meta Achievements
---`Achievements` is a static class that is used to award achievements to `Player`s.
Achievements = {}

---Awards the player with the given `userID` the achievement with the given `achievementID`.
---@param userID integer
---@param achievementID integer
---@param callback fun(success: boolean, errorMessage: string?)
function Achievements:Award(userID, achievementID, callback) end

---Checks if the player with the given `userID` has the achievement with the given `achievementID`.
---@param userID integer
---@param achievementID integer
---@param callback fun(hasAchievement: boolean, success: boolean, errorMessage: string?)
function Achievements:HasAchievement(userID, achievementID, callback) end