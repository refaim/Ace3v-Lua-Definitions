---@class AceGUIWidget
AceGUIWidget = {}

---
--- Set the callback function of a specific callback. Only one function can be assigned to every callback.
--- Usage:
--- local frame = AceGUI:Create("Frame")
--- frame:SetCallback("OnClose", function(widget) AceGUI:Release(widget) end)
--- Every callback is called with the widget as the first argument, and the name of the callback as the second.
--- Any arguments specific to the callback type follow after these two arguments.
---@param name string
---@param func fun(widget: AceGUIWidget, name: string)
function AceGUIWidget:SetCallback(name, func) end

---
--- Set the widget's parent.
---@param parent AceGUIWidgetContainer
function AceGUIWidget:SetParent(parent) end

---
--- Sets the absolute width of the widget.
--- Calling this function will try to call :OnWidthSet on the widget, if defined.
---@param width number
function AceGUIWidget:SetWidth(width) end

---
--- Set the width of the widget relative to its container.
--- Any values between 0.0 and 1.0 are accepted, in percent.
---@param width number
function AceGUIWidget:SetRelativeWidth(width) end

---
--- Set if the widget should use the full available width of its container.
---@param isFull boolean
function AceGUIWidget:SetFullWidth(isFull) end

---
--- Return if the widget is using the full width of its container.
---@return boolean
function AceGUIWidget:IsFullWidth() end

---
--- Sets the absolute height of the widget.
--- Calling this function will try to call :OnHeightSet on the widget, if defined.
--- Note: Most widgets have a fixed pre-defined height, and changing their height is not recommended.
---@param height number
function AceGUIWidget:SetHeight(height) end

---
--- Set if the widget should use the full available height of its container.
---@param isFull boolean
function AceGUIWidget:SetFullHeight(isFull) end

---
--- Return if the widget is using the full height of its container.
---@return boolean
function AceGUIWidget:IsFullHeight() end

---
--- Return whether or not an object is actually visible on-screen.
---@return boolean
function AceGUIWidget:IsVisible() end

---
--- Determine if this object is shown (would be visible if its parent was visible).
---@return boolean
function AceGUIWidget:IsShown() end

---
--- Release the widget back into the widget pool.
--- This is the equivalent to AceGUI:Release(widget)
function AceGUIWidget:Release() end

---
--- Set an attachment point of this widget.
--- This function directly forwards to the base-frames :SetPoint
---@overload fun(anchorPoint: WidgetAnchorPoint, x: number, y: number)
---@param anchorPoint WidgetAnchorPoint Point on this region at which it is to be anchored to another.
---@param relativeTo? Region|nil Reference to the other region to which this region is to be anchored; if nil or omitted, anchors the region relative to its parent (or to the screen dimensions if the region has no parent).
---@param relativeAnchorPoint? WidgetAnchorPoint|nil Point on the other region to which this region is to be anchored; if nil or omitted, defaults to the same value as point.
---@param x? number|nil Horizontal distance between point and relativePoint (in pixels; positive values put point to the right of relativePoint); if nil or omitted, defaults to 0.
---@param y? number|nil Vertical distance between point and relativePoint (in pixels; positive values put point below relativePoint); if nil or omitted, defaults to 0.
function AceGUIWidget:SetPoint(anchorPoint, relativeTo, relativeAnchorPoint, x, y) end

---
--- Clear all attachment points of this widget.
function AceGUIWidget:ClearAllPoints() end

---
--- Get the number of anchor points for this widget.
---@return number
function AceGUIWidget:GetNumPoints() end

---
--- Get details for an anchor point for this widget.
function AceGUIWidget:GetPoint(...) end

---
--- Return the internal user data table from this widget.
--- The User Data can be used to store information about this widget, and its functionality. Any User Data is wiped when the widget is released.
---@return table
function AceGUIWidget:GetUserDataTable() end

---
--- Set a key in the user data table.
---@param key any
---@param value any
function AceGUIWidget:SetUserData(key, value) end

---
--- Get the value of a specific user data key.
---@param key any
---@return any
function AceGUIWidget:GetUserData(key) end
