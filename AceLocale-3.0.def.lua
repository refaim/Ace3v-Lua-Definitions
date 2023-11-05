---@class LibAceLocaleDef
LibAceLocaleDef = {}

---
--- Register a new locale (or extend an existing one) for the specified application.
--- :NewLocale will return a table you can fill your locale into, or nil if the locale isn't needed for the players
--- game locale.
---
--- Usage:
--- [enUS.lua]
--- local L = LibStub("AceLocale-3.0"):NewLocale("TestLocale", "enUS", true)
--- L["string1"] = true
---
--- [deDE.lua]
--- local L = LibStub("AceLocale-3.0"):NewLocale("TestLocale", "deDE")
--- if not L then return end
--- L["string1"] = "Zeichenkette1"
---@param application string @ Unique name of addon / module
---@param locale LocaleCode @ Name of the locale to register, e.g. "enUS", "deDE", etc.
---@param isDefault boolean @ If this is the default locale being registered (your addon is written in this language, generally enUS)
---@param silent boolean|"raw" @ If true, the locale will not issue warnings for missing keys. Must be set on the first locale registered. If set to "raw", nils will be returned for unknown keys (no metatable used).
---@return table<string, string>|nil @ Locale Table to add localizations to, or nil if the current locale is not required.
---@overload fun(application: string, locale: LocaleCode): table<string, string>|nil
---@overload fun(application: string, locale: LocaleCode, isDefault: boolean): table<string, string>|nil
function LibAceLocaleDef:NewLocale(application, locale, isDefault, silent) end

---
--- Returns localizations for the current locale (or default locale if translations are missing).
--- Errors if nothing is registered (spank developer, not just a missing translation)
---@param application string @ Unique name of addon / module.
---@param silent boolean @ If true, the locale is optional, silently return nil if it's not found (defaults to false, optional).
---@return table<string, string> @ The locale table for the current language.
function LibAceLocaleDef:GetLocale(application, silent) end
