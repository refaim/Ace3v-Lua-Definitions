--- A scrolling group, usually used inside another group to provide scrolling capabilities.
--- Note that the container containing the ScrollFrame should always be set to the "List" layout, or the ScrollFrame will not function properly.
---@class AceGUIScrollFrame: AceGUIWidgetContainer
---@field frame Frame
---@field scrollframe ScrollFrame
AceGUIScrollFrame = {}

---
--- Set the scroll position.
---@param value number
function AceGUIScrollFrame:SetScroll(value) end

---
--- Set an external status table.
---@param status AceGUIStatusTable
function AceGUIScrollFrame:SetStatusTable(status) end
