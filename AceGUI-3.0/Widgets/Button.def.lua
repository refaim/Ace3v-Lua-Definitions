---
--- This widget is a default click-able Button.
--- Callbacks:
--- OnClick() - Fires when the button is clicked.
--- OnEnter() - Fires when the cursor enters the widget.
--- OnLeave() - Fires when the cursor leaves the widget.
---@class AceGUIButton: AceGUIWidget
---@field frame Button
AceGUIButton = {}

---
--- Set the text to be displayed on the button.
---@param text string
function AceGUIButton:SetText(text) end

---
--- Set if the button should automatically adjust its width to the text.
---@param autoWidth boolean
function AceGUIButton:SetAutoWidth(autoWidth) end

---
--- Set if the button should be disabled.
---@param disabled boolean
function AceGUIButton:SetDisabled(disabled) end
