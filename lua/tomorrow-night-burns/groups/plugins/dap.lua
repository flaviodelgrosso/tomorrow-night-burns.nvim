local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    debugPC = { link = "DiffAdd" },
    debugBreakpoint = { link = "ThemePrimarySign" },
    DapBreakpointSymbol = { fg = colors.primary, bg = colors.bg1 },
    DapStoppedSymbol = { fg = colors.secondary, bg = colors.bg1 },
    DapUIBreakpointsCurrentLine = { link = "ThemePrimarySoft" },
    DapUIBreakpointsDisabledLine = { link = "ThemeGray" },
    DapUIBreakpointsInfo = { link = "ThemeSecondarySoft" },
    DapUIBreakpointsLine = { link = "ThemePrimarySoft" },
    DapUIBreakpointsPath = { link = "ThemeSecondaryActive" },
    DapUICurrentFrameName = { link = "ThemePrimaryMuted" },
    DapUIDecoration = { link = "ThemePrimaryMuted" },
    DapUIEndofBuffer = { link = "EndOfBuffer" },
    DapUIFloatBorder = { link = "ThemeSecondarySoft" },
    DapUILineNumber = { link = "ThemePrimarySoft" },
    DapUIModifiedValue = { link = "ThemePrimary" },
    DapUIPlayPause = { fg = colors.secondary, bg = colors.bg1 },
    DapUIRestart = { fg = colors.secondary, bg = colors.bg1 },
    DapUIScope = { link = "ThemeSecondaryActive" },
    DapUISource = { link = "ThemeFg1" },
    DapUIStepBack = { fg = colors.secondary_active, bg = colors.bg1 },
    DapUIStepInto = { fg = colors.secondary_active, bg = colors.bg1 },
    DapUIStepOut = { fg = colors.secondary_active, bg = colors.bg1 },
    DapUIStepOver = { fg = colors.secondary_active, bg = colors.bg1 },
    DapUIStop = { fg = colors.primary, bg = colors.bg1 },
    DapUIStoppedThread = { link = "ThemeSecondaryActive" },
    DapUIThread = { link = "ThemeSecondaryActive" },
    DapUIType = { link = "ThemePrimaryActive" },
    DapUIUnavailable = { link = "ThemeGray" },
    DapUIWatchesEmpty = { link = "ThemeGray" },
    DapUIWatchesError = { link = "ThemePrimary" },
    DapUIWatchesValue = { link = "ThemePrimarySoft" },
    DapUIWinSelect = { link = "ThemePrimarySoft" },
  }
end

return M
