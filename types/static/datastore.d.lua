---@meta Datastore
---@class (exact) Datastore
---Returns whether or not the `Datastore` is loaded.
---@field Loading boolean
---Fires when the `Datastore` loads.
---@field Loaded Event<fun()>
---Attempts to get the given `key` from the `Datastore`.
---@field Get fun(self: Datastore, key: string, callback: fun(value: any?, success: boolean, errorMessage: string?))
---Attempts to remove the given `key` from the `Datastore`.
---@field Remove fun(self: Datastore, key: string, callback: fun(success: boolean, errorMessage: string?))
---Attempts to set the given `key` from the `Datastore` to the given `value`.
---@field Get fun(self: Datastore, key: string, value: any, callback: fun(success: boolean, errorMessage: string?))

---`Datastore` is a service used for storing data between place sessions.
---
---There is a limit placed on the `Datastore` functions per server instance. Requests that exceed this limit will be canceled and return an error. Read and write functions both have their own rate limit of `(30 + (10 * [number of players]))` requests per minute. This limit is reset every minute.
---
---You can create as many `Datastore`s as you want, however, each `Datastore` is limited to 65,535 bytes, and its key cannot be longer than 32 characters. Creating a `Datastore` will also count towards the rate limit.
---
---If you are testing your place locally through Polytoria Creator, no requests will be made to the server and your data will not be saved after the session ends. You will need to upload your place to the website to test the requests.
Datastore = {}

---Attempts to get a `Datastore` from the `Datastore` service.
---@param datastoreName string
---@return Datastore
function Datastore:GetDatastore(datastoreName) end