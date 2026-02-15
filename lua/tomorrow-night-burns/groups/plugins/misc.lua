local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    -- Which-Key
    WhichKeyTitle = { link = "NormalFloat" },
    -- Illuminate
    IlluminatedWordText = { link = "LspReferenceText" },
    IlluminatedWordRead = { link = "LspReferenceRead" },
    IlluminatedWordWrite = { link = "LspReferenceWrite" },
    -- Rainbow delimiters
    TSRainbowRed = { fg = colors.primary },
    TSRainbowOrange = { fg = colors.primary_active },
    TSRainbowYellow = { fg = colors.primary_soft },
    TSRainbowGreen = { fg = colors.secondary },
    TSRainbowBlue = { fg = colors.secondary_active },
    TSRainbowViolet = { fg = colors.primary_muted },
    TSRainbowCyan = { fg = colors.secondary_soft },
    RainbowDelimiterRed = { fg = colors.primary },
    RainbowDelimiterOrange = { fg = colors.primary_active },
    RainbowDelimiterYellow = { fg = colors.primary_soft },
    RainbowDelimiterGreen = { fg = colors.secondary },
    RainbowDelimiterBlue = { fg = colors.secondary_active },
    RainbowDelimiterViolet = { fg = colors.primary_muted },
    RainbowDelimiterCyan = { fg = colors.secondary_soft },
  }
end

return M
