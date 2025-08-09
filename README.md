# purescript-clip

Simple clipboard access for PureScript-native using Go.

## Installation

```yaml
# spago.yaml
dependencies:
  - clip: "https://github.com/i-am-the-slime/purescript-clip.git"
```

## Usage

```purescript
import Clip (getClipboard, setClipboard)

main = do
  -- Set clipboard contents
  setClipboard "Hello, clipboard!"
  
  -- Get clipboard contents
  content <- getClipboard
  log content
```

## API

### `setClipboard :: String -> Effect Unit`

Set the clipboard to the given string.

### `getClipboard :: Effect String`  

Get the current clipboard contents. Returns empty string if clipboard is unavailable or contains non-text data.

## Cross-Platform

This library works on:
- macOS
- Linux (requires X11 or Wayland)
- Windows

## Requirements

- PureScript with purescript-native backend
- Go 1.24.3+