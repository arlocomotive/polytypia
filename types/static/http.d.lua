---@meta Http
---@alias HttpRequestCallback fun(data: string?, failed: boolean, errorMessage: string?)
---@alias HttpHeaders table<string, string>
---`Http` is a static class used for HTTP communications and requests.
---
---Each server has a rate limit of 90 requests per minute.
---
---The place ID is sent along with the request under the header named `PT-Game-ID`.
Http = {}

---Sends a GET request to the given `url`.
---@param url string
---@param callback HttpRequestCallback
---@param headers HttpHeaders
function Http:Get(url, callback, headers) end

---Sends a POST request to the given `url`.
---@param url string
---@param body string
---@param callback HttpRequestCallback
---@param headers HttpHeaders
function Http:Post(url, body, callback, headers) end

---Sends a PUT request to the given `url`.
---@param url string
---@param body string
---@param callback HttpRequestCallback
---@param headers HttpHeaders
function Http:Put(url, body, callback, headers) end

---Sends a DELETE request to the given `url`.
---@param url string
---@param callback HttpRequestCallback
---@param headers HttpHeaders
function Http:Delete(url, callback, headers) end

---Sends a PATCH request to the given `url`.
---@param url string
---@param body string
---@param callback HttpRequestCallback
---@param headers HttpHeaders
function Http:Patch(url, body, callback, headers) end