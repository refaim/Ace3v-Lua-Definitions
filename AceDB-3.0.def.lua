---@class AceDBDef
AceDBDef = {}

---
--- Creates a new database object that can be used to handle database settings and profiles.
--- By default, an empty DB is created, using a character specific profile.
---
--- You can override the default profile used by passing any profile name as the third argument,
--- or by passing //true// as the third argument to use a globally shared profile called "Default".
---
--- Note that there is no token replacement in the default profile name, passing a defaultProfile as "char"
--- will use a profile named "char", and not a character-specific profile.
--- [Create an empty DB using a character-specific default profile.]
--- self.db = LibStub("AceDB-3.0"):New("MyAddonDB")
--- [Create a DB using defaults and using a shared default profile]
--- self.db = LibStub("AceDB-3.0"):New("MyAddonDB", defaults, true)
---
---@param tbl string|table @ The name of variable, or table to use for the database.
---@param defaults table @ A table of database defaults.
---@param defaultProfile string|true @ The name of the default profile. If not set, a character specific profile will be used as the default.
---@return table
---@overload fun(tbl: string|table, defaults: table): table
function AceDBDef:New(tbl, defaults, defaultProfile) end
