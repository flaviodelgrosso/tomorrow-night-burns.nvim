local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    Special = { link = "ThemePrimaryActive" },
    Comment = { fg = colors.muted, italic = config.italic.comments },
    Todo = { fg = colors.bg0, bg = colors.primary_soft, bold = config.bold, italic = config.italic.comments },
    Done = { fg = colors.primary_active, bold = config.bold, italic = config.italic.comments },
    Error = { fg = colors.primary, bold = config.bold, reverse = config.inverse },
    Statement = { link = "ThemePrimary" },
    Conditional = { link = "ThemePrimary" },
    Repeat = { link = "ThemePrimary" },
    Label = { link = "ThemePrimary" },
    Exception = { link = "ThemePrimary" },
    Operator = { fg = colors.primary_active, italic = config.italic.operators },
    Keyword = { link = "ThemePrimary" },
    Identifier = { link = "ThemeSecondaryActive" },
    Function = { link = "ThemeSecondaryBold" },
    PreProc = { link = "ThemeSecondarySoft" },
    Include = { link = "ThemeSecondarySoft" },
    Define = { link = "ThemeSecondarySoft" },
    Macro = { link = "ThemeSecondarySoft" },
    PreCondit = { link = "ThemeSecondarySoft" },
    Constant = { link = "ThemePrimaryMuted" },
    Character = { link = "ThemePrimaryMuted" },
    String = { fg = colors.secondary, italic = config.italic.strings },
    Boolean = { link = "ThemePrimaryMuted" },
    Number = { link = "ThemePrimaryMuted" },
    Float = { link = "ThemePrimaryMuted" },
    Type = { link = "ThemePrimarySoft" },
    StorageClass = { link = "ThemePrimaryActive" },
    Structure = { link = "ThemeSecondarySoft" },
    Typedef = { link = "ThemePrimarySoft" },
    Delimiter = { link = "ThemePrimaryActive" },
  }
end

return M
