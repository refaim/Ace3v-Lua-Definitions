---@class LibAceConfigDialogDef
LibAceConfigDialogDef = {}

--- Add an option table into the Blizzard Interface Options panel.
-- You can optionally supply a descriptive name to use and a parent frame to use,
-- as well as a path in the options table.\\
-- If no name is specified, the appName will be used instead.
--
-- If you specify a proper `parent` (by name), the interface options will generate a
-- tree layout. Note that only one level of children is supported, so the parent always
-- has to be a head-level note.
--
-- This function returns a reference to the container frame registered with the Interface
-- Options. You can use this reference to open the options with the API function
-- `InterfaceOptionsFrame_OpenToCategory`.

---@param appName string @ The application name as given to `:RegisterOptionsTable()`.
---@param name string|nil @ A descriptive name to display in the options tree (defaults to appName).
---@param parent Frame|nil @ The parent to use in the interface options tree.
---@vararg string @ The path in the options table to feed into the interface options panel.
---@return Frame @ The reference to the frame registered into the Interface Options.
---@overload fun(appName: string): void
---@overload fun(appName: string, name: string|nil): void
---@overload fun(appName: string, name: string|nil, parent: Frame|nil): void
function LibAceConfigDialogDef:AddToBlizOptions(appName, name, parent, ...) end

---
--- Open an option window at the specified path (if any).
--- This function can optionally feed the group into a pre-created container
--- instead of creating a new container frame.
---@param appName string @ The application name as given to `:RegisterOptionsTable()`.
---@param container AceGUIFrameDef @ An optional container frame to feed the options into
---@vararg string The path to open after creating the options window (see `:SelectGroup` for details)
---@overload fun(appName: string): void
---@overload fun(appName: string, container: AceGUIFrameDef): void
function LibAceConfigDialogDef:Open(appName, container, ...) end

-- TODO add remaining API methods
