---@class AceAddonDef
AceAddonDef = {}

--- Do init tasks here, like loading the Saved Variables,
--- or setting up slash commands.
function AceAddonDef:OnInitialize() end

--- Do more initialization here, that really enables the use of your addon.
--- Register Events, Hook functions, Create Frames, Get information from
--- the game that wasn't available in OnInitialize
function AceAddonDef:OnEnable() end

--- Unhook, Unregister Events, Hide frames that you created.
--- You would probably only use an OnDisable if you want to
--- build a "standby" mode, or be able to toggle modules on/off.
function AceAddonDef:OnDisable() end

---@class LibAceAddonDef
LibAceAddonDef = {}

---@param name string
---@param lib0 string
---@param lib1 string
---@param lib2 string
---@param lib3 string
---@param lib4 string
---@param lib5 string
---@param lib6 string
---@param lib7 string
---@param lib8 string
---@param lib9 string
---@param lib10 string
---@return AceAddonDef
---@overload fun(name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string, lib5: string, lib6: string, lib7: string, lib8: string, lib9: string): AceAddonDef
---@overload fun(name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string, lib5: string, lib6: string, lib7: string, lib8: string): AceAddonDef
---@overload fun(name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string, lib5: string, lib6: string, lib7: string): AceAddonDef
---@overload fun(name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string, lib5: string, lib6: string): AceAddonDef
---@overload fun(name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string, lib5: string): AceAddonDef
---@overload fun(name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string): AceAddonDef
---@overload fun(name: string, lib0: string, lib1: string, lib2: string, lib3: string): AceAddonDef
---@overload fun(name: string, lib0: string, lib1: string, lib2: string): AceAddonDef
---@overload fun(name: string, lib0: string, lib1: string): AceAddonDef
---@overload fun(name: string, lib0: string): AceAddonDef
---@overload fun(name: string): AceAddonDef
---@overload fun(addon: table, name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string, lib5: string, lib6: string, lib7: string, lib8: string, lib9: string): AceAddonDef
---@overload fun(addon: table, name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string, lib5: string, lib6: string, lib7: string, lib8: string): AceAddonDef
---@overload fun(addon: table, name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string, lib5: string, lib6: string, lib7: string): AceAddonDef
---@overload fun(addon: table, name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string, lib5: string, lib6: string): AceAddonDef
---@overload fun(addon: table, name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string, lib5: string): AceAddonDef
---@overload fun(addon: table, name: string, lib0: string, lib1: string, lib2: string, lib3: string, lib4: string): AceAddonDef
---@overload fun(addon: table, name: string, lib0: string, lib1: string, lib2: string, lib3: string): AceAddonDef
---@overload fun(addon: table, name: string, lib0: string, lib1: string, lib2: string): AceAddonDef
---@overload fun(addon: table, name: string, lib0: string, lib1: string): AceAddonDef
---@overload fun(addon: table, name: string, lib0: string): AceAddonDef
---@overload fun(addon: table, name: string): AceAddonDef
function LibAceAddonDef:NewAddon(name, lib0, lib1, lib2, lib3, lib4, lib5, lib6, lib7, lib8, lib9, lib10) end
