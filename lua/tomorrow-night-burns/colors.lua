local M = {}

local function get_contrast_value(palette, contrast, role)
  local key = string.format("%s_dark_%s", role, contrast)
  local default_key = string.format("%s_dark", role)
  return palette[key] or palette[default_key]
end

---@param palette ThemePalette
---@param config ThemeConfig
---@return table
function M.get(palette, config)
  local p = vim.deepcopy(palette)

  local contrast = config.contrast

  local color_groups = {
    bg0 = p.surface_dark_0,
    bg1 = p.surface_dark_1,
    bg2 = p.surface_dark_2,
    bg3 = p.surface_dark_3,
    bg4 = p.surface_dark_4,
    fg0 = p.surface_light_0,
    fg1 = p.surface_light_1,
    fg3 = p.surface_light_3,
    fg4 = p.surface_light_4,
    primary = p.primary,
    primary_active = p.primary_active,
    primary_soft = p.primary_soft,
    primary_muted = p.primary_muted,
    primary_dark = p.primary_dark,
    secondary = p.secondary,
    secondary_active = p.secondary_active,
    secondary_soft = p.secondary_soft,
    diff_delete = p.diff_primary_dark,
    diff_add = p.diff_secondary_dark,
    diff_change = p.diff_tertiary_dark,
    warning = p.warning,
    info = p.info,
    success = p.success,
    git_added = p.git_added,
    git_modified = p.git_modified,
    git_deleted = p.git_deleted,
    muted = p.neutral,
  }

  if contrast == "hard" or contrast == "soft" then
    color_groups.bg0 = get_contrast_value(p, contrast, "surface")
    color_groups.diff_delete = get_contrast_value(p, contrast, "diff_primary")
    color_groups.diff_add = get_contrast_value(p, contrast, "diff_secondary")
    color_groups.diff_change = get_contrast_value(p, contrast, "diff_tertiary")
  end

  return color_groups
end

---@param colors table
function M.setup_terminal_colors(colors)
  local term_colors = {
    colors.bg0,
    colors.primary_dark,
    colors.secondary,
    colors.primary_active,
    colors.secondary_active,
    colors.primary_muted,
    colors.secondary_soft,
    colors.fg4,
    colors.muted,
    colors.primary,
    colors.secondary,
    colors.primary_soft,
    colors.secondary_active,
    colors.primary_muted,
    colors.secondary_soft,
    colors.fg1,
  }
  for index, value in ipairs(term_colors) do
    vim.g["terminal_color_" .. index - 1] = value
  end
end

return M
