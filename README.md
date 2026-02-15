# tomorrow-night-burns.nvim

A Neovim dark colorscheme inspired by Tomorrow Night Burns.

## Screenshot

![tomorrow-night-burns screenshot](screenshot.png)

## Features

- Dark-only theme
- Tree-sitter and LSP-friendly highlight groups
- Plugin integrations for common UI/tooling plugins
- Configurable palette and highlight overrides

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
  color_overrides = {},
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
- `color_overrides`: override palette tokens (hex values)
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

### Palette override

```lua
require("tomorrow-night-burns").setup({
  color_overrides = {
    primary = "#ff6b6b",
    secondary = "#b8c4cc",
    surface_dark_0 = "#111111",
  },
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

## Palette Tokens

Useful keys for `color_overrides` include:

- `surface_dark_0` ... `surface_dark_4`
- `surface_dark_0_hard`, `surface_dark_0_soft`
- `surface_light_0` ... `surface_light_4`
- `primary`, `primary_active`, `primary_soft`, `primary_muted`, `primary_dark`, `primary_dark_alt`
- `secondary`, `secondary_active`, `secondary_soft`
- `diff_primary_dark`, `diff_secondary_dark`, `diff_tertiary_dark`
- `diff_primary_dark_hard`, `diff_secondary_dark_hard`, `diff_tertiary_dark_hard`
- `diff_primary_dark_soft`, `diff_secondary_dark_soft`, `diff_tertiary_dark_soft`
- `warning`, `info`, `success`
- `git_added`, `git_modified`, `git_deleted`
- `neutral`

## Requirements

- Neovim `>= 0.8`

## License

MIT. See `LICENSE`.
