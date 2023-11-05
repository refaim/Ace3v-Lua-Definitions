---@class LibAceEventEmbedDef
LibAceEventEmbedDef = {}

---@alias LibAceEvent_RegisterEvent_CallbackWithoutExtraArgument (fun(event: string): void) | (fun(event: string, a1): void) | (fun(event: string, a1, a2): void) | (fun(event: string, a1, a2, a3): void) | (fun(event: string, a1, a2, a3, a4): void) | (fun(event: string, a1, a2, a3, a4, a5): void) | (fun(event: string, a1, a2, a3, a4, a5, a6): void) | (fun(event: string, a1, a2, a3, a4, a5, a6, a7): void) |(fun(event: string, a1, a2, a3, a4, a5, a6, a7, a8): void) |(fun(event: string, a1, a2, a3, a4, a5, a6, a7, a8, a9): void)

---
--- Register for a Blizzard Event.
--- The callback will be called with the optional `arg` as the first argument (if supplied), and the event name as the second (or first, if no arg was supplied)
--- The callback function to call when the event is triggered (funcref or method, defaults to a method with the event name).
--- Any arguments to the event will be passed on after that.
---@generic T
---@param event string
---@param callback (fun(arg: T, event: string): void) | (fun(arg: T, event: string, a1): void)  | (fun(arg: T, event: string, a1, a2): void) | (fun(arg: T, event: string, a1, a2, a3): void) | (fun(arg: T, event: string, a1, a2, a3, a4): void) | (fun(arg: T, event: string, a1, a2, a3, a4, a5): void) | (fun(arg: T, event: string, a1, a2, a3, a4, a5, a6): void) | (fun(arg: T, event: string, a1, a2, a3, a4, a5, a6, a7): void) | (fun(arg: T, event: string, a1, a2, a3, a4, a5, a6, a7, a8): void) | (fun(arg: T, event: string, a1, a2, a3, a4, a5, a6, a7, a8, a9): void)
---@param arg T
---@overload fun(event: string): void
---@overload fun(event: string, callback: LibAceEvent_RegisterEvent_CallbackWithoutExtraArgument): void
function LibAceEventEmbedDef:RegisterEvent(event, callback, arg) end

---
--- Unregister an event.
---@param event string
function LibAceEventEmbedDef:UnregisterEvent(event) end

---
--- Unregister all events.
function LibAceEventEmbedDef:UnregisterAllEvents() end

-- TODO generic T arg, event name, callback args

---
--- Register for a custom AceEvent-internal message.
--- The callback will be called with the optional `arg` as the first argument (if supplied), and the event name as the second (or first, if no arg was supplied)
--- Any arguments to the event will be passed on after that.
---@param message string @ The message to register for.
---@param callback function @ The callback function to call when the message is triggered (funcref or method, defaults to a method with the message name).
---@param arg any @ An optional argument to pass to the callback function.
---@overload fun(message: string): void
---@overload fun(message: string, callback: function): void
function LibAceEventEmbedDef:RegisterMessage(message, callback, arg) end

---
--- Unregister a message
---@param message string
function LibAceEventEmbedDef:UnregisterMessage(message) end

---
--- Unregister all messages.
function LibAceEventEmbedDef:UnregisterAllMessages() end

---
--- Send a message over the AceEvent-3.0 internal message system to other addons registered for this message.
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

---
--- Embeds AceEvent into the target object making the functions from the mixins list available on target:...
---@param target table @ target object to embed AceEvent in
---@return LibAceEventEmbedDef
function LibAceEventDef:Embed(target) end

---
--- Unregister all events messages etc when the target disables.
--- this method should be called by the target manually or by an addon framework
---@param target LibAceEventEmbedDef @ target object that is being disabled
function LibAceEventDef:OnEmbedDisable(target)
    target:UnregisterAllEvents()
    target:UnregisterAllMessages()
end
