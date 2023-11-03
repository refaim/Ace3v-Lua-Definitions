--- https://www.wowace.com/projects/ace3/pages/ace-config-3-0-options-tables
---@shape LibAceConfigOptionsTable

---@class LibAceConfigEmbedDef
LibAceConfigEmbedDef = {}

---
--- Register a option table with the AceConfig registry.
--- You can supply a slash command (or a table of slash commands) to register with AceConfigCmd directly.
--- local AceConfig = LibStub("AceConfig-3.0")
--- AceConfig:RegisterOptionsTable("MyAddon", myOptions, {"/myslash", "/my"})
---@param appName string @ The application name for the config table.
---@param options LibAceConfigOptionsTable|(fun(): LibAceConfigOptionsTable) @ The option table (or a function to generate one on demand). See AceConfigRegistry for the details.
---@param slashcmd string[]|string|nil @ A slash command to register for the option table, or a table of slash commands.
---@overload fun(appName: string, options: LibAceConfigOptionsTable|(fun(): LibAceConfigOptionsTable)): void
function LibAceConfigEmbedDef:RegisterOptionsTable(appName, options, slashcmd) end

---@class LibAceConfigDef: LibAceConfigEmbedDef
LibAceConfigDef = {}
