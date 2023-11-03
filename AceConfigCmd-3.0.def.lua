---@class LibAceConfigCmdDef
LibAceConfigCmdDef = {}

--- Utility function to create a slash command handler.
--- Also registers tab completion with AceTab
---@param slashcmd string @ The slash command WITHOUT leading slash (only used for error output).
---@param appName string @ The application name as given to `:RegisterOptionsTable()`.
---@param func function|string|nil @ The command handler.
---@overload fun(slashcmd: string, appName: string): void
function LibAceConfigCmdDef:CreateChatCommand(slashcmd, appName, func) end

-- TODO add remaining API methods
