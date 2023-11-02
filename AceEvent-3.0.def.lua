---@class LibAceEventEmbedDef
LibAceEventEmbedDef = {}

---
--- Register for a Blizzard Event.
--- The callback will be called with the optional `arg` as the first argument (if supplied), and the event name as the second (or first, if no arg was supplied)
--- Any arguments to the event will be passed on after that.
---@generic T
---@param event string
---@param callback (fun(arg: T, event: string, a1, a2, a3, a4, a5, a6, a7, a8, a9): void) | (fun(arg: T, event: string, a1, a2, a3, a4, a5, a6, a7, a8): void) | (fun(arg: T, event: string, a1, a2, a3, a4, a5, a6, a7): void) | (fun(arg: T, event: string, a1, a2, a3, a4, a5, a6): void) | (fun(arg: T, event: string, a1, a2, a3, a4, a5): void) | (fun(arg: T, event: string, a1, a2, a3, a4): void) | (fun(arg: T, event: string, a1, a2, a3): void) | (fun(arg: T, event: string, a1, a2): void) | (fun(arg: T, event: string, a1): void) | (fun(arg: T, event: string): void)
---@param arg T
---@overload fun(event: string, callback: (fun(event: string, a1, a2, a3, a4, a5, a6, a7, a8, a9): void) | (fun(event: string, a1, a2, a3, a4, a5, a6, a7, a8): void) | (fun(event: string, a1, a2, a3, a4, a5, a6, a7): void) | (fun(event: string, a1, a2, a3, a4, a5, a6): void) | (fun(event: string, a1, a2, a3, a4, a5): void) | (fun(event: string, a1, a2, a3, a4): void) | (fun(event: string, a1, a2, a3): void) | (fun(event: string, a1, a2): void) | (fun(event: string, a1): void) | (fun(event: string): void)): void
function LibAceEventEmbedDef:RegisterEvent(event, callback, arg) end

---
--- Unregister an event.
---@param event string
function LibAceEventEmbedDef:UnregisterEvent(event) end

---
--- Unregister all events.
function LibAceEventEmbedDef:UnregisterAllEvents() end

---@param message string
---@param callback function
---@param arg any
---@overload fun(message: string, callback: function): void
function LibAceEventEmbedDef:RegisterMessage(message, callback, arg) end

---@param message string
function LibAceEventEmbedDef:UnregisterMessage(message) end

function LibAceEventEmbedDef:UnregisterAllMessages() end

---@param message string
---@param argc number
---@param a1 any
---@param a2 any
---@param a3 any
---@param a4 any
---@param a5 any
---@param a6 any
---@param a7 any
---@param a8 any
---@param a9 any
---@param a10 any
---@overload fun(message: string, argc: 0): void
---@overload fun(message: string, argc: 1, a1): void
---@overload fun(message: string, argc: 2, a1, a2): void
---@overload fun(message: string, argc: 3, a1, a2, a3): void
---@overload fun(message: string, argc: 4, a1, a2, a3, a4): void
---@overload fun(message: string, argc: 5, a1, a2, a3, a4, a5): void
---@overload fun(message: string, argc: 6, a1, a2, a3, a4, a5, a6): void
---@overload fun(message: string, argc: 7, a1, a2, a3, a4, a5, a6, a7): void
---@overload fun(message: string, argc: 8, a1, a2, a3, a4, a5, a6, a7, a8): void
---@overload fun(message: string, argc: 9, a1, a2, a3, a4, a5, a6, a7, a8, a9): void
function LibAceEventEmbedDef:SendMessage(message, argc, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10) end

---@class LibAceEventDef: LibAceEventEmbedDef
LibAceEventDef = {}

---@param target table
---@return LibAceEventDef
function LibAceEventDef:Embed(target) end
