---@class LibAceGUI
LibAceGUI = {}

---
--- Create a new Widget of the given type.
--- This function will instantiate a new widget (or use one from the widget pool), and call the
--- OnAcquire function on it, before returning.
---@param type string @ The type of the widget.
---@return any @ The newly created widget.
---@overload fun(type: "Button"): AceGUIButton
---@overload fun(type: "Dropdown"): AceGUIDropdown
---@overload fun(type: "EditBox"): AceGUIEditBox
---@overload fun(type: "Frame"): AceGUIFrame
---@overload fun(type: "InlineGroup"): AceGUIInlineGroup
---@overload fun(type: "InteractiveLabel"): AceGUIInteractiveLabel
---@overload fun(type: "Label"): AceGUILabel
---@overload fun(type: "SimpleGroup"): AceGUISimpleGroup
---@overload fun(type: "ScrollFrame"): AceGUIScrollFrame
function LibAceGUI:Create(type) end
