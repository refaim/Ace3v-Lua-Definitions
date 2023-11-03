---@class AceGUIFrameDef
---@field frame Frame
AceGUIFrameDef = {} -- TODO add methods

function AceGUIFrameDef:Show() end
function AceGUIFrameDef:Hide() end

---@param layout "Fill" | "Flow" | "List"
function AceGUIFrameDef:SetLayout(layout) end

---@class LibAceGUIDef
LibAceGUIDef = {}

-- TODO add other overloads and widget types

---
--- Create a new Widget of the given type.
--- This function will instantiate a new widget (or use one from the widget pool), and call the
--- OnAcquire function on it, before returning.
---@param type string @ The type of the widget.
---@return any @ The newly created widget.
---@overload fun(type: "Frame"): AceGUIFrameDef
function LibAceGUIDef:Create(type) end

-- TODO add remaining API methods
