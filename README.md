# Reset Button Relocator

Moves Factorio's **Mod Settings** reset button away from the search control: from the far right of the header to the far left.

![Thumbnail](thumbnail.png)

## Compatibility

- Factorio base mod `2.0.77` or later
- Initial release: `0.0.1`

## Install from source

1. Run `powershell -ExecutionPolicy Bypass -File scripts/package.ps1`.
2. Copy `dist/reset-button-relocator_0.0.1.zip` into your Factorio `mods` directory.
3. Enable **Reset Button Relocator** and restart Factorio.

## Implementation note

Factorio does not expose the Mod Settings dialog's native layout to mods. The reset button uses the built-in `tool_button_red` style in a right-aligned header flow; this mod reserves trailing space on that style to place the reset button at the left edge. This preserves the button's behavior and tooltip.

The shared style may also affect any other UI control that uses `tool_button_red`; report such a case in the issue tracker so it can be evaluated against the targeted Factorio version.

## Development

The release artifact has the Factorio-required filename `reset-button-relocator_0.0.1.zip`. The source repository intentionally keeps the mod files at its root.

## License

MIT. See [LICENSE](LICENSE).

