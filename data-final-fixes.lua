-- The Mod Settings reset control uses the shared red tool-button style.
-- Its parent header flow is right aligned, so reserving trailing space moves
-- the control to the far left of the dialog without changing its behavior.
local reset_button_style = data.raw["gui-style"].default.tool_button_red

reset_button_style.right_margin = 740
