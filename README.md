# Goose Zed Hiliter

Goose syntax highlighting for Zed by M Sheriff. The optional [Goose Studio theme extension](goose-studio-theme) provides two Visual Studio-inspired palettes.

| Syntax | Goose Studio Light | Goose Studio Dark |
| --- | --- | --- |
| Keywords | Violet `#7928A1` | Violet `#C586F6` |
| Function declarations and calls | Teal `#006F68` | Teal `#4EC9B0` |
| Numbers | Blue `#0057B8` | Blue `#79B8FF` |
| Operators and strings | Green `#16733A` | Green `#89D185` |
| Types and uppercase-only names | Brown `#79502D` | Light brown `#D5A477` |

## Local installation

1. Quit Zed.
2. Copy this folder into Zed's [installed extensions directory](https://zed.dev/docs/extensions/installing-extensions) and name the installed copy `goose-hiliter`. On Windows this is `%LOCALAPPDATA%\Zed\extensions\installed\goose-hiliter`.
3. For the optional palettes, copy the standalone goose-studio-theme folder into the same installed extensions directory. If upgrading from the bundled installation, remove the old themes folder from the installed goose-hiliter folder.
4. Start Zed and open [hello.goose](examples/hello.goose). Zed associates `.goose` files with Goose in all workspaces.
5. Pick **Goose Studio Light** or **Goose Studio Dark** from the theme selector. The active theme also styles Zed's interface and other languages.

The bundled WebAssembly parser was generated from the [Goose Tree-sitter grammar](https://github.com/aardappel/goose/tree/7b90f91d91845f4ef1712e16ed053f395e4e6e1c/tree-sitter) with Tree-sitter CLI 0.25.8 (ABI 14) and compiled with WASI SDK 34. Its Apache 2.0 license is in [grammars/LICENSE](grammars/LICENSE).

## License

This extension is licensed under [Apache 2.0](LICENSE). The manifest pins the generated grammar sources to a separate commit so Zed can build the parser for the registry.
