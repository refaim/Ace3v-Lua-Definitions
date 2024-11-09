---@class AceGUIWidgetContainer: AceGUIWidget
AceGUIWidgetContainer = {}

---
--- Suspend all layout operations until resumed.
function AceGUIWidgetContainer:PauseLayout() end

---
--- Resume layout operations after pause.
function AceGUIWidgetContainer:ResumeLayout() end

---
--- Cause the container to re-layout all his child frames.
function AceGUIWidgetContainer:DoLayout() end

---
--- Set the Layout this container should use when managing its child frames.
--- Currently implemented Layouts in AceGUI-3.0:
--- "Fill" - Fill the whole container with the first widget (used by Groups)
--- "Flow" - A row based flow layout
--- "List" - Very simple Layout, children are stacked on top of each other down the left side.
---@param layout "Fill" | "Flow" | "List"
function AceGUIWidgetContainer:SetLayout(layout) end

---
--- Add a new widget to the list of the containers children.
--- If beforeWidget is specified, the new widget will be inserted before this widget in the list, otherwise at the end.
---@param child AceGUIWidget
---@param beforeWidget AceGUIWidget
---@overload fun(child: AceGUIWidget): void
function AceGUIWidgetContainer:AddChild(child, beforeWidget) end

---
--- Add multiple child widgets.
---@vararg AceGUIWidget @ The child widgets to add.
function AceGUIWidgetContainer:AddChildren(...) end

---
--- Release all child frames of this container.
function AceGUIWidgetContainer:ReleaseChildren() end

---
--- Enable/Disable the automatic height adjustment of containers.
--- If this is on (default), the container will resize vertically to fit all widgets in it.
--- This setting has no effect if a container is added in a "Fill" Layout, or if its set to use all available space (SetFullHeight).
---@param adjust boolean @ Whether to adjust height.
function AceGUIWidgetContainer:SetAutoAdjustHeight(adjust) end
