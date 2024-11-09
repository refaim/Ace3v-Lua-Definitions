---
--- A select-box style box with a dropdown pullout.
--- Callbacks:
--- OnValueChanged(key [,checked]) - Fires when the selection changes. The second argument is send for multi-select dropdowns to indicate a change in one option.
--- OnEnter() - Fires when the cursor enters the widget.
--- OnLeave() - Fires when the cursor leaves the widget.
---@class AceGUIDropdown: AceGUIWidget
---@field frame Frame
AceGUIDropdown = {}

---
--- Disable the widget.
---@param disabled boolean
function AceGUIDropdown:SetDisabled(disabled) end

---
--- Toggle multi-selecting.
---@param enabled boolean
function AceGUIDropdown:SetMultiselect(enabled) end

---
--- Query the multi-select flag.
---@return boolean
function AceGUIDropdown:GetMultiselect() end

---
--- Set the value to an item in the List.
---@param value any
function AceGUIDropdown:SetValue(value) end

---
--- Get the current value of the dropdown.
---@return any
function AceGUIDropdown:GetValue() end

---
--- Set the list of values for the dropdown (key => value pairs).
--- The order is a optional second table, that contains the order in which the entries should be displayed (Array table with the data tables keys as values).
--- Behaviour is undefined if you provide a order table that contains not the exact same keys as in the data table.
---@generic K
---@generic V
---@param table table<K, V>
---@param order K[]
---@overload fun(table: table<K, V>)
function AceGUIDropdown:SetList(table, order) end

---
--- Set the text displayed in the box.
---@param text string|nil
function AceGUIDropdown:SetText(text) end

---
--- Set the text for the label.
---@param text string|nil
function AceGUIDropdown:SetLabel(text) end

---
--- Add an item to the list.
---@param key any
---@param value any
function AceGUIDropdown:AddItem(key, value) end

---
--- Set the value of a item in the list.
---@param key any
---@param value any
function AceGUIDropdown:SetItemValue(key, value) end

---
--- Disable one item in the list.
---@param key any
---@param disabled boolean
function AceGUIDropdown:SetItemDisabled(key, disabled) end
