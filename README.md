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

Factorio does not expose the Mod Settings dialog's native elements to runtime mods. Its reset row is a `subheader_frame` containing a zero-height flexible spacer followed by the reset button. This mod prevents that subheader's internal flow from stretching, leaving the spacer at zero width and placing the following button at the left edge.

The implementation deliberately leaves the shared `tool_button_red` style unchanged, so unrelated red tool buttons keep their original layout.

## Development

The release artifact has the Factorio-required filename `reset-button-relocator_0.0.1.zip`. The source repository intentionally keeps the mod files at its root.

## License

MIT. See [LICENSE](LICENSE).

