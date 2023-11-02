---@class LibAceHookEmbedDef
LibAceHookEmbedDef = {}

---
--- Hook a function or a method on an object.
--- The hook created will be a "safe hook", that means that your handler will be called
--- before the hooked function ("Pre-Hook"), and you don't have to call the original function yourself,
--- however you cannot stop the execution of the function, or modify any of the arguments/return values.
--- This type of hook is typically used if you need to know if some function got called, and don't want to modify it.
--- Usage:
--- Create an addon with AceHook embeded
--- MyAddon = LibStub("AceAddon-3.0"):NewAddon("HookDemo", "AceHook-3.0")
---
--- Hook ActionButton_UpdateHotkeys, overwriting the secure status
--- function MyAddon:OnEnable()
---   self:Hook("ActionButton_UpdateHotkeys", true)
--- end
---
--- function MyAddon:ActionButton_UpdateHotkeys(button, type)
---   print(button:GetName() .. " is updating its HotKey")
--- end
---@param object table @ The object to hook a method from.
---@param method string @ If object was specified, the name of the method, or the name of the function to hook.
---@param handler function|string @ The handler for the hook, a funcref or a method name. (Defaults to the name of the hooked function)
---@param secure boolean @ If true, AceHook will allow hooking of secure functions.
---@overload fun(method: string): void
---@overload fun(method: string, handler: function|string): void
---@overload fun(method: string, secure: boolean): void
---@overload fun(method: string, handler: function|string, secure: boolean): void
---@overload fun(object: table, method: string): void
---@overload fun(object: table, method: string, handler: function|string): void
---@overload fun(object: table, method: string, secure: boolean): void
function LibAceHookEmbedDef:Hook(object, method, handler, secure) end

---
--- SecureHook a function or a method on an object.
--- This function is a wrapper around the `hooksecurefunc` function in the WoW API. Using AceHook
--- extends the functionality of secure hooks, and adds the ability to unhook once the hook isn't
--- required anymore, or the addon is being disabled.
--- Secure Hooks should be used if the secure-status of the function is vital to its function,
--- and taint would block execution. Secure Hooks are always called after the original function was called
--- ("Post Hook"), and you cannot modify the arguments, return values or control the execution.
---@param object table @ The object to hook a method from
---@param method string @ If object was specified, the name of the method, or the name of the function to hook.
---@param handler function|string @ The handler for the hook, a funcref or a method name. (Defaults to the name of the hooked function)
---@overload fun(method: string): void
---@overload fun(method: string, handler: function|string): void
---@overload fun(object: table, method: string): void
function LibAceHookEmbedDef:SecureHook(object, method, handler) end

---
--- RawHook a function or a method on an object.
--- The hook created will be a "raw hook", that means that your handler will completly replace
--- the original function, and your handler has to call the original function (or not, depending on your intentions).
--- The original function will be stored in `self.hooks[object][method]` or `self.hooks[functionName]` respectively.
--- This type of hook can be used for all purposes, and is usually the most common case when you need to modify arguments
--- or want to control execution of the original function.
---
--- create an addon with AceHook embeded
--- MyAddon = LibStub("AceAddon-3.0"):NewAddon("HookDemo", "AceHook-3.0")
---
--- Hook ActionButton_UpdateHotkeys, overwriting the secure status
--- function MyAddon:OnEnable()
---   self:RawHook("ActionButton_UpdateHotkeys", true)
--- end
---
--- function MyAddon:ActionButton_UpdateHotkeys(button, type)
---   if button:GetName() == "MyButton" then
---     do stuff
---   else
---     self.hooks.ActionButton_UpdateHotkeys(button, type)
---   end
--- end
---@param object table @ The object to hook a method from.
---@param method string @ If object was specified, the name of the method, or the name of the function to hook.
---@param handler function|string @ The handler for the hook, a funcref or a method name. (Defaults to the name of the hooked function)
---@param secure boolean @ If true, AceHook will allow hooking of secure functions.
---@overload fun(method: string): void
---@overload fun(method: string, handler: function|string): void
---@overload fun(method: string, secure: boolean): void
---@overload fun(method: string, handler: function|string, secure: boolean): void
---@overload fun(object: table, method: string): void
---@overload fun(object: table, method: string, handler: function|string): void
---@overload fun(object: table, method: string, secure: boolean): void
function LibAceHookEmbedDef:RawHook(object, method, handler, secure) end

---
--- Hook a script handler on a frame.
--- The hook created will be a "safe hook", that means that your handler will be called
--- before the hooked script ("Pre-Hook"), and you don't have to call the original function yourself,
--- however you cannot stop the execution of the function, or modify any of the arguments/return values.\\
--- This is the frame script equivalent of the :Hook safe-hook. It would typically be used to be notified
--- when a certain event happens to a frame.
---
--- create an addon with AceHook embeded
--- MyAddon = LibStub("AceAddon-3.0"):NewAddon("HookDemo", "AceHook-3.0")
---
--- Hook the OnShow of FriendsFrame
--- function MyAddon:OnEnable()
---   self:HookScript(FriendsFrame, "OnShow", "FriendsFrameOnShow")
--- end
---
--- function MyAddon:FriendsFrameOnShow(frame)
---   print("The FriendsFrame was shown!")
--- end
---@param frame Frame @ The Frame to hook the script on.
---@param script ScriptType @ The script to hook.
---@param handler function|string @ The handler for the hook, a funcref or a method name. (Defaults to the name of the hooked script)
---@overload fun(frame: Frame, script: ScriptType): void
function LibAceHookEmbedDef:HookScript(frame, script, handler) end

---
--- SecureHook a script handler on a frame.
--- This function is a wrapper around the `frame:HookScript` function in the WoW API. Using AceHook
--- extends the functionality of secure hooks, and adds the ability to unhook once the hook isn't
--- required anymore, or the addon is being disabled.
--- Secure Hooks should be used if the secure-status of the function is vital to its function,
--- and taint would block execution. Secure Hooks are always called after the original function was called
--- ("Post Hook"), and you cannot modify the arguments, return values or control the execution.
---@param frame Frame @ The Frame to hook the script on.
---@param script ScriptType @ The script to hook.
---@param handler function|string @ The handler for the hook, a funcref or a method name. (Defaults to the name of the hooked script)
---@overload fun(frame: Frame, script: ScriptType): void
function LibAceHookEmbedDef:SecureHookScript(frame, script, handler) end

---
--- RawHook a script handler on a frame.
--- The hook created will be a "raw hook", that means that your handler will completly replace
--- the original script, and your handler has to call the original script (or not, depending on your intentions).\\
--- The original script will be stored in `self.hooks[frame][script]`.\\
--- This type of hook can be used for all purposes, and is usually the most common case when you need to modify arguments
--- or want to control execution of the original script.
---
--- create an addon with AceHook embeded
--- MyAddon = LibStub("AceAddon-3.0"):NewAddon("HookDemo", "AceHook-3.0")
---
--- Hook the OnShow of FriendsFrame
--- function MyAddon:OnEnable()
---   self:RawHookScript(FriendsFrame, "OnShow", "FriendsFrameOnShow")
--- end
---
--- Call the original function then do our stuff
--- function MyAddon:FriendsFrameOnShow(frame)
---   self.hooks[frame].OnShow(frame)
---   do_stuff()
--- end
---@param frame Frame @ The Frame to hook the script on.
---@param script ScriptType @ The script to hook.
---@param handler function|string @ The handler for the hook, a funcref or a method name. (Defaults to the name of the hooked script)
---@overload fun(frame: Frame, script: ScriptType): void
function LibAceHookEmbedDef:RawHookScript(frame, script, handler) end

---
--- Unhook from the specified function, method or script.
---@param object table @ The object or frame to unhook from.
---@param method string @ The name of the method, function or script to unhook from.
---@overload fun(method: string): void
function LibAceHookEmbedDef:Unhook(object, method) end

---
--- Unhook all existing hooks for this addon.
function LibAceHookEmbedDef:UnhookAll() end

---
--- Check if the specific function, method or script is already hooked.
---@param object table @ The object or frame to unhook from.
---@param method string @ The name of the method, function or script to unhook from.
---@return boolean
---@overload fun(method: string): boolean
function LibAceHookEmbedDef:IsHooked(object, method) end
