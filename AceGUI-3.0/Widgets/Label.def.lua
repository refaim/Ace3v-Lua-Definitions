--- Displays text and optionally an icon.
---@class AceGUILabel: AceGUIWidget
---@field frame Frame
AceGUILabel = {}

---
--- Set the text.
---@param text string
function AceGUILabel:SetText(text) end

---
--- Set the color of the text. Uses white if no color is provided.
---@param r number
---@param g number
---@param b number
---@overload fun(): void
function AceGUILabel:SetColor(r, g, b) end

---
--- Set the font of the text.
---@param font string @ path to the font file, relative to the WoW base directory
---@param size number @ size in points
---@param flags string @ any comma-delimited combination of "OUTLINE", "THICKOUTLINE" and "MONOCHROME"
---@overload fun(font: string, size: number): void
function AceGUILabel:SetFont(font, size, flags) end

---
--- Set the font using a pre-defined font-object. Uses GameFontHighlightSmall if no font is provided.
---@param font FontInstance|string|nil @ the font object or the name of a predefined font object
---@overload fun(): void
function AceGUILabel:SetFontObject(font) end

---
--- Set the image to be shown. Additionally to the path, any extra arguments will be directly forwarded to :SetTexCoord.
---@param texture string @ path to the image file, relative to the WoW base directory
---@overload fun(texture: string, minX: number, maxX: number, minY: number, maxY: number)
---@overload fun(texture: string, ULx: number, ULy: number, LLx: number, LLy: number, URx: number, URy: number, LRx: number, LRy: number)
function AceGUILabel:SetImage(texture) end

---
--- Set the size of the image.
---@param width number
---@param height number
function AceGUILabel:SetImageSize(width, height) end
