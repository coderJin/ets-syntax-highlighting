# ETS Syntax Highlighting

A comprehensive Visual Studio Code extension that provides syntax highlighting and language support for ETS (ArkTS) files used in HarmonyOS development.

## Features

- **Complete Syntax Highlighting**: Full support for ETS/ArkTS syntax including:
  - Keywords and control structures
  - Decorators (@Component, @State, @Prop, etc.)
  - ArkUI components (Column, Row, Text, Button, etc.)
  - TypeScript features (interfaces, classes, enums, generics)
  - Comments and documentation
  - String literals and template strings
  - Numbers and constants

- **Language Configuration**:
  - Auto-closing brackets and quotes
  - Comment toggling support
  - Smart indentation
  - Code folding
  - Word pattern recognition

- **Code Snippets**: Pre-built snippets for common ETS patterns:
  - Component creation
  - State management
  - Layout components
  - Event handlers
  - Navigation
  - And more...

## Supported File Extensions

- `.ets` - ETS source files
- `.d.ets` - ETS declaration files

## Installation

1. Open Visual Studio Code
2. Go to Extensions (Ctrl+Shift+X)
3. Search for "ETS Syntax Highlighting"
4. Click Install

## Usage

Once installed, the extension will automatically provide syntax highlighting for all `.ets` and `.d.ets` files.

### Code Snippets

Type any of the following prefixes and press Tab to insert a snippet:

- `component` - Create a new ETS Component
- `entry` - Create an Entry Component
- `state` - Create a State variable
- `prop` - Create a Prop variable
- `button` - Create a Button component
- `text` - Create a Text component
- `column` - Create a Column layout
- `row` - Create a Row layout
- And many more...

## Example

Here's a sample ETS file with syntax highlighting:

```ets
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State count: number = 0

  build() {
    Column({ space: 20 }) {
      Text(this.message)
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Blue)

      Button('Click Me')
        .width('80%')
        .height(40)
        .onClick(() => {
          this.count++
          this.message = `Clicked ${this.count} times`
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
```

## Requirements

- Visual Studio Code 1.74.0 or higher
- No additional dependencies required

## Known Issues

- None currently known. Please report issues on the GitHub repository.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Release Notes

### 1.0.0

- Initial release
- Complete ETS/ArkTS syntax highlighting
- Language configuration support
- Code snippets for common patterns
- Support for decorators and ArkUI components

## License

This extension is licensed under the MIT License.

## Support

If you encounter any issues or have suggestions for improvements, please:

1. Check the [GitHub Issues](https://github.com/your-username/ets-syntax-highlighting/issues)
2. Create a new issue if your problem isn't already reported
3. Provide as much detail as possible including code samples

---

**Enjoy coding with ETS!** 🚀
