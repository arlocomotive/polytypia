---@meta Chat
---`Chat` is a static class used for various actions regarding the chat.
Chat = {}

---Sends a chat message to all `Player`s.
---@param message string
function Chat:BroadcastMessage(message) end

---Sends a chat message to the given `player`.
---@param message string
---@param player Player
function Chat:UnicastMessage(message, player) end