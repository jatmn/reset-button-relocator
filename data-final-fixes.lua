-- The Mod Settings reset control uses the shared red tool-button style.
-- Reserving trailing space moves the reset control to the left. Factorio does
-- not expose a style unique to that native button, so every GUI element using
-- tool_button_red receives the same margin.
local reset_button_style = data.raw["gui-style"].default.tool_button_red

reset_button_style.right_margin = 740
