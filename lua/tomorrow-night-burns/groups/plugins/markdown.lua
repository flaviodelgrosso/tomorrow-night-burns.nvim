local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    markdownItalic = { fg = colors.fg3, italic = true },
    markdownBold = { fg = colors.fg3, bold = config.bold },
    markdownBoldItalic = { fg = colors.fg3, bold = config.bold, italic = true },
    markdownH1 = { link = "ThemeSecondaryBold" },
    markdownH2 = { link = "ThemeSecondaryBold" },
    markdownH3 = { link = "ThemePrimarySoftBold" },
    markdownH4 = { link = "ThemePrimarySoftBold" },
    markdownH5 = { link = "ThemePrimarySoft" },
    markdownH6 = { link = "ThemePrimarySoft" },
    markdownCode = { link = "ThemeSecondarySoft" },
    markdownCodeBlock = { link = "ThemeSecondarySoft" },
    markdownCodeDelimiter = { link = "ThemeSecondarySoft" },
    markdownBlockquote = { link = "ThemeGray" },
    markdownListMarker = { link = "ThemeGray" },
    markdownOrderedListMarker = { link = "ThemeGray" },
    markdownRule = { link = "ThemeGray" },
    markdownHeadingRule = { link = "ThemeGray" },
    markdownUrlDelimiter = { link = "ThemeFg3" },
    markdownLinkDelimiter = { link = "ThemeFg3" },
    markdownLinkTextDelimiter = { link = "ThemeFg3" },
    markdownHeadingDelimiter = { link = "ThemePrimaryActive" },
    markdownUrl = { link = "ThemePrimaryMuted" },
    markdownUrlTitleDelimiter = { link = "ThemeSecondary" },
    markdownLinkText = { fg = colors.muted, underline = config.underline },
    markdownIdDeclaration = { link = "markdownLinkText" },
  }
end

return M
