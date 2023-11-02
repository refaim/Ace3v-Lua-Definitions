---@class LibStubDef
---@overload fun(major: string, silent: boolean): table, number|nil
LibStubDef = {}

---@param major string
---@param minor string|number
---@return (table, number|nil)|nil
function LibStubDef:NewLibrary(major, minor) end

---@param major string
---@param silent boolean
---@return table, number|nil
function LibStubDef:GetLibrary(major, silent) end
