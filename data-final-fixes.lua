-- The native Mod Settings header contains a horizontally stretchable,
-- zero-height spacer followed by the reset button. Preventing the subheader's
-- content flow from stretching leaves that spacer at its natural width of zero,
-- so the following reset button is laid out at the left edge.
--
-- Do not modify tool_button_red here: it is shared by unrelated base-game and
-- mod GUIs.
local subheader_style = data.raw["gui-style"].default.subheader_frame
local header_flow_style = subheader_style.horizontal_flow_style

header_flow_style.horizontally_stretchable = "off"
header_flow_style.horizontal_align = "left"
