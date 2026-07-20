# Reset Button Relocator

Moves the **Mod Settings** reset button 40 pixels left, creating a clearer and safer gap between it and the search button.

## What it does

- Shifts the red reset-to-defaults button a modest distance away from the right edge.
- Reduces the chance of hitting reset when aiming for the nearby search control.
- Requires no configuration.

## Important compatibility note

Factorio does not expose a unique style for the native Mod Settings reset button. This mod therefore adjusts the shared red tool-button style (`tool_button_red`).

Other base-game or modded red GUI buttons using that style receive the same 40-pixel spacing adjustment. They may shift slightly or influence neighboring layout. The small offset is intentionally conservative; testing has not revealed the major layout damage caused by larger offsets, but the shared-style limitation still applies.

## Compatibility

- Factorio 2.0
- Requires base mod 2.0.77 or later
- Mod version 0.0.1

## Source

[GitHub repository](https://github.com/jatmn/reset-button-relocator)

## Author

jatmn
