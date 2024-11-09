--- A basic label which reacts to mouse interaction, optionally with an icon in front.
--- Callbacks:
--- OnClick(button) - Fires when the label is clicked.
--- OnEnter() - Fires when the cursor enters the widget.
--- OnLeave() - Fires when the cursor leaves the widget.
---@class AceGUIInteractiveLabel: AceGUILabel
---@field frame Frame
AceGUIInteractiveLabel = {}

---
--- Sets the texture to be displayed from a file or to a solid color
---@overload fun(r: number, g: number, b:number, alpha?: number)
---@param texture string path to a file with texture
function AceGUIInteractiveLabel:SetHighlight(texture) end

---
--- Set the texture coordinates for the highlight texture. Uses (0, 1, 0, 1) if no arguments are provided.
---@param minX number
---@param maxX number
---@param minY number
---@param maxY number
---@overload fun(ULx: number, ULy: number, LLx: number, LLy: number, URx: number, URy: number, LRx: number, LRy: number)
---@overload fun(): void
function AceGUIInteractiveLabel:SetHighlightTexCoord(minX, maxX, minY, maxY) end
