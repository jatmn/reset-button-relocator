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

Factorio does not expose a style unique to the native Mod Settings reset button. The working implementation adds trailing margin to the shared `tool_button_red` style, which moves the reset button from the right edge to the left.

> **Known side effect:** Any base-game or mod GUI using `tool_button_red` receives the same margin. Unrelated red buttons can therefore move or cause neighboring controls to shift. This includes action buttons such as the delete control in the Mods dialog.

## Development

The release artifact has the Factorio-required filename `reset-button-relocator_0.0.1.zip`. The source repository intentionally keeps the mod files at its root.

## License

MIT. See [LICENSE](LICENSE).

