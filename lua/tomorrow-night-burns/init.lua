---@class TomorrowNightBurns
---@field config ThemeConfig
---@field palette ThemePalette
local TomorrowNightBurns = {}

local default_config = require("tomorrow-night-burns.config").default
local palette = require("tomorrow-night-burns.palette")
local colors_mod = require("tomorrow-night-burns.colors")
local groups_mod = require("tomorrow-night-burns.groups")

TomorrowNightBurns.config = vim.deepcopy(default_config)
TomorrowNightBurns.palette = palette

---@param config ThemeConfig?
TomorrowNightBurns.setup = function(config)
  TomorrowNightBurns.config = vim.deepcopy(default_config)
  TomorrowNightBurns.config = vim.tbl_deep_extend("force", TomorrowNightBurns.config, config or {})
end

--- main load function
TomorrowNightBurns.load = function()
  if vim.version().minor < 8 then
    vim.notify_once("tomorrow-night-burns: you must use neovim 0.8 or higher")
    return
  end

  -- reset colors
  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end
  vim.g.colors_name = "tomorrow-night-burns"
  vim.o.termguicolors = true
  vim.o.background = "dark"

  local colors = colors_mod.get(TomorrowNightBurns.palette, TomorrowNightBurns.config)

  if TomorrowNightBurns.config.terminal_colors then
    colors_mod.setup_terminal_colors(colors)
  end

  local groups = groups_mod.get(colors, TomorrowNightBurns.config)

  -- add highlights
  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return TomorrowNightBurns
