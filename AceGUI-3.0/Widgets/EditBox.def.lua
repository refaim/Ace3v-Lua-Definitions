---
--- A simple text input box.
--- Callbacks:
--- OnTextChanged(text) - Fires on every text change.
--- OnEnterPressed(text) - Fires when the new text was confirmed and should be saved.
--- OnEnter() - Fires when the cursor enters the widget.
--- OnLeave() - Fires when the cursor leaves the widget.
---@class AceGUIEditBox: AceGUIWidget
---@field frame Frame
AceGUIEditBox = {}

---
--- Set the text in the edit box.
---@param text string|nil
function AceGUIEditBox:SetText(text) end

---
--- Get the text in the edit box.
---@return string
function AceGUIEditBox:GetText() end

---
--- Set the text for the label.
---@param text string|nil
function AceGUIEditBox:SetLabel(text) end

---
--- Disable the widget.
---@param disabled boolean
function AceGUIEditBox:SetDisabled(disabled) end

---
--- Disable the "Okay" button.
---@param disabled boolean
function AceGUIEditBox:DisableButton(disabled) end

---
--- Set the maximum number of letters that can be entered (0 for unlimited).
---@param num number|nil
function AceGUIEditBox:SetMaxLetters(num) end

---
--- Highlight the text in the editbox.
---@param from number @ the position at which to start the highlight and defaults to 0 if omitted.
---@param to number @ the position at which to stop the highlight and defaults to the end of the string if omitted.
---@overload fun(): void
---@overload fun(from: number|nil): void
---@overload fun(from: number, to: number|nil): void
function AceGUIEditBox:HighlightText(from, to) end

---
--- Set the focus to the editbox.
function AceGUIEditBox:SetFocus() end

---
--- Clear the focus from the editbox.
function AceGUIEditBox:ClearFocus() end
