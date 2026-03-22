---@meta Http
---`Http` is a static class used for HTTP communications and requests.
---
---Each server has a rate limit of 90 requests per minute.
---
---The place ID is sent along with the request under the header named `PT-Game-ID`.
Http = {}

---Sends a GET request to the specified `url`.
---@param url string
---@param callback fun(data: string, failed: boolean, errorMessage: string)
---@param headers string[]?
function Http:Get(url, callback, headers) end

---Sends a POST request to the specified `url`.
---@param url string
---@param parameters string A query string (format: `key1=value&key2=value`).
---@param callback fun(data: string, failed: boolean, errorMessage: string)
---@param headers string[]?
function Http:Post(url, parameters, callback, headers) end

---Sends a PUT request to the specified `url`.
---@param url string
---@param parameters string A query string (format: `key1=value&key2=value`).
---@param callback fun(data: string, failed: boolean, errorMessage: string)
---@param headers string[]?
function Http:Put(url, parameters, callback, headers) end

---Sends a DELETE request to the specified `url`.
---@param url string
---@param callback fun(data: string, failed: boolean, errorMessage: string)
---@param headers string[]?
function Http:Delete(url, callback, headers) end

---Sends a PATCH request to the specified `url`.
---@param url string
---@param parameters string A query string (format: `key1=value&key2=value`).
---@param callback fun(data: string, failed: boolean, errorMessage: string)
---@param headers string[]?
function Http:Patch(url, parameters, callback, headers) end