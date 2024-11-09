--- A simple stand-alone container widget, usually the base of any UI.
---@class AceGUIFrame: AceGUIWidgetContainer
---@field frame Frame
---@field statustext FontString
AceGUIFrame = {}

---
--- Show frame.
function AceGUIFrame:Show() end

---
--- Hide frame.
function AceGUIFrame:Hide() end

---
--- Set the title of the frame.
---@param title string
function AceGUIFrame:SetTitle(title) end

---
--- Set the text in the status bar.
---@param text string
function AceGUIFrame:SetStatusText(text) end

---
--- Set an external status table.
---@param status AceGUIStatusTable
function AceGUIFrame:SetStatusTable(status) end

---
--- Apply the settings stored in the status table.
function AceGUIFrame:ApplyStatus() end

---
--- Enable or disable resizing of the frame.
---@param state boolean
function AceGUIFrame:EnableResize(state) end
