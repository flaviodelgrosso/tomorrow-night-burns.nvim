local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  local groups = {}
  local plugin_modules = {
    "tomorrow-night-burns.groups.plugins.git",
    "tomorrow-night-burns.groups.plugins.telescope",
    "tomorrow-night-burns.groups.plugins.snacks",
    "tomorrow-night-burns.groups.plugins.cmp",
    "tomorrow-night-burns.groups.plugins.dap",
    "tomorrow-night-burns.groups.plugins.neo_tree",
    "tomorrow-night-burns.groups.plugins.noice",
    "tomorrow-night-burns.groups.plugins.mini",
    "tomorrow-night-burns.groups.plugins.markdown",
    "tomorrow-night-burns.groups.plugins.mason",
    "tomorrow-night-burns.groups.plugins.misc",
  }
  for _, mod in ipairs(plugin_modules) do
    groups = vim.tbl_extend("force", groups, require(mod).get(colors, config))
  end
  return groups
end

return M
