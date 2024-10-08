---@class LibAceCoreDef
LibAceCoreDef = {}

---
--- Trim leading and trailing whitespaces from a string.
---
---@param s string
---@return string
function LibAceCoreDef.strtrim(s) end

---
--- Split a string by delimiter.
---
---@param delim string @ The delimiter to split by.
---@param s string @ The string to split.
---@param n number|nil @ The maximum number of splits to perform.
---@return string...
function LibAceCoreDef.strsplit(delim, s, n) end

---
--- Wipe a table, setting all keys to nil and size to 0.
---@param t table @ The table to wipe.
function LibAceCoreDef.wipe(t) end

---
--- Truncate a table to a given size.
---@param t table @ The table to truncate.
---@param e number|nil @ The new size of the table, defaults to the current size.
function LibAceCoreDef.truncate(t, e) end
