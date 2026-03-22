---@meta Signal

---`Signal` is an `Instance` that represents a signal.
---@class (exact) Signal: Instance
---Fires when the `Signal` is invoked.
---@field Invoked Event<fun(...: any)>
---Invokes the `Signal` with the given arguments.
---@field Invoke fun(self: Signal, ...: any)