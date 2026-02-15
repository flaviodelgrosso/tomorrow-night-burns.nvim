# tomorrow-night-burns.nvim

A Neovim dark colorscheme inspired by Tomorrow Night Burns.

## Screenshot

![tomorrow-night-burns screenshot](screenshot.png)

## Features

- Dark-only theme
- Tree-sitter and LSP-friendly highlight groups
- Plugin integrations for common UI/tooling plugins
- Configurable highlight overrides

## Installation

### lazy.nvim

```lua
{
  "flaviodelgrosso/tomorrow-night-burns.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("tomorrow-night-burns")
  end,
}
```

## Configuration

```lua
require("tomorrow-night-burns").setup({
  terminal_colors = true,
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true,
  contrast = "", -- "", "soft", "hard"
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

vim.cmd.colorscheme("tomorrow-night-burns")
```

## Config Details

- `terminal_colors`: set terminal ANSI colors (`vim.g.terminal_color_*`)
- `contrast`: controls base surface/diff intensity (`""`, `"soft"`, `"hard"`)
- `transparent_mode`: removes background from main editor surfaces
- `dim_inactive`: dims inactive windows
- `overrides`: override any highlight group directly

## Examples

### Hard contrast

```lua
require("tomorrow-night-burns").setup({
  contrast = "hard",
})
vim.cmd.colorscheme("tomorrow-night-burns")
```

### Transparent background

```lua
require("tomorrow-night-burns").setup({
  transparent_mode = true,
})
vim.cmd.colorscheme("tomorrow-night-burns")
```

### Highlight override

```lua
require("tomorrow-night-burns").setup({
  overrides = {
    Comment = { italic = false },
    NormalFloat = { bg = "#1c1c1c" },
    CursorLine = { bg = "#202020" },
  },
})
vim.cmd.colorscheme("tomorrow-night-burns")
```

## Requirements

- Neovim `>= 0.8`

## License

MIT. See `LICENSE`.
