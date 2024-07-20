-- [nfnl] Compiled from fnl/morimo/init.fnl by https://github.com/Olical/nfnl, do not edit.
local function apply(highlights)for hl,spec in pairs(highlights)do vim.api.nvim_set_hl(0,hl,spec)end end
local function loadPlugin(ctx,name)apply(require('morimo.plugins.'..name)(ctx))end
package.preload["morimo.colors"] = package.preload["morimo.colors"] or function(...)
  return {fg0 = "#b5d2a9", fg1 = "#98b18e", bg0 = "#2a2a2e", bg1 = "#313135", bg2 = "#36363a", bg3 = "#3f3f43", grey0 = "#767b82", grey1 = "#7f868c", grey2 = "#9aa1a8", grey3 = "#b0b7be", lightRed = "#ff6e6e", red = "#d76e6e", darkRed = "#a25454", lightGreen = "#98c593", green = "#679f68", darkGreen = "#4a6e4a", seaGreen = "#729e7b", blue = "#789cbc", lightBlue = "#9bb9d4", darkBlue = "#4d6b83", slateBlue = "#607597", cyan = "#7aa7b3", lightCyan = "#a0c8cc", darkCyan = "#54757b", magenta = "#b384b1", lightMagenta = "#d0a3d0", darkMagenta = "#8a5b8a", yellow = "#d3c785", lightYellow = "#e0d7a3", brown = "#8b6e58", darkYellow = "#b6a36b", orange = "#d99872", purple = "#a688a8", violet = "#8b85aa", sub_red0 = "#793a42", sub_red1 = "#8c4a52", sub_red2 = "#a15963", sub_red3 = "#b56974", sub_green0 = "#37574d", sub_green1 = "#416960", sub_green2 = "#4c7a72", sub_green3 = "#578b85", sub_blue0 = "#415c6d", sub_blue1 = "#4c6a7f", sub_blue2 = "#5b7a93", sub_blue3 = "#6c8ba7", sub_yellow0 = "#5d5c50", sub_yellow1 = "#6c6a5c", sub_yellow2 = "#7f7c6d", sub_yellow3 = "#938e7f"}
end
local c = require("morimo.colors")
local builtin = {editor = {ColorColumn = {bg = c.bg1}, Conceal = {fg = c.grey1, bold = true}, Cursor = {reverse = true}, lCursor = {link = "Cursor"}, CursorIM = {link = "Cursor"}, CursorColumn = {link = "CursorLine"}, CursorLine = {bg = c.bg2}, Directory = {fg = c.green}, DiffAdd = {bg = c.sub_green0}, DiffChange = {bg = c.sub_blue0}, DiffDelete = {bg = c.sub_red0}, DiffText = {fg = c.bg0, bg = c.fg0}, EndOfBuffer = {fg = c.bg0}, TermCursor = {link = "Cursor"}, TermCursorNC = {link = "Cursor"}, ErrorMsg = {fg = c.darkRed, bold = true, underline = true}, WinSeparator = {fg = c.bg2, bg = "NONE"}, Folded = {fg = c.grey1}, FoldColumn = {fg = c.grey1}, SignColumn = {fg = c.fg0}, IncSearch = {fg = c.bg0, bg = c.lightGreen}, Substitute = {fg = c.bg0, bg = c.yellow}, LineNr = {fg = c.grey0}, CursorLineNr = {fg = c.fg0, bold = true}, MatchParen = {bg = c.bg2, bold = true}, ModeMsg = {fg = c.fg0, bold = true}, MsgArea = {link = "StatusLine"}, MsgSeparator = {bg = c.bg2}, MoreMsg = {fg = c.yellow, bold = true}, NonText = {fg = c.grey0}, Normal = {fg = c.fg0, bg = c.bg0}, NormalFloat = {fg = c.fg0, bg = c.bg1}, FloatTitle = {fg = "lightBlue", bold = true}, FloatFooter = {fg = c.bg2}, NormalNC = {link = "Normal"}, Pmenu = {fg = c.fg1, bg = c.bg1}, PmenuSel = {fg = c.bg0, bg = c.green}, PmenuSbar = {bg = c.bg1}, PmenuThumb = {bg = c.grey1}, Question = {link = "MoreMsg"}, QuickFixLine = {fg = c.purple}, Search = {fg = c.bg0, bg = c.cyan}, SpecialKey = {fg = c.fg1}, SpellBad = {fg = c.red, undercurl = true, sp = c.red}, SpellCap = {fg = c.blue, undercurl = true, sp = c.blue}, SpellLocal = {fg = c.cyan, undercurl = true, sp = c.cyan}, SpellRare = {fg = c.purple, undercurl = true, sp = c.purple}, StatusLine = {fg = c.grey1, bg = c.bg1}, StatusLineNC = {fg = c.grey0, bg = c.bg1}, TabLine = {fg = c.grey2, bg = c.bg3}, TabLineFill = {fg = c.grey1, bg = c.bg1}, TabLineSel = {fg = c.bg0, bg = c.green}, Title = {fg = c.orange, bold = true}, Visual = {bg = c.bg3}, VisualNOS = {bg = c.bg3}, WarningMsg = {fg = c.yellow, bold = true}, Whitespace = {fg = c.bg3}, WildMenu = {link = "PmenuSel"}, WinBar = {fg = c.fg1, bg = "NONE"}, WinBarNC = {fg = c.fg1, bg = "NONE"}}, lsp = {LspReferenceText = {fg = c.bg0, bg = c.darkYellow}, LspReferenceRead = {link = "LspReferenceText"}, LspReferenceWrite = {fg = c.bg0, bg = c.darkYellow, underline = true}, LspCodeLens = {fg = c.grey1}, LspCodeLensSeparator = {link = "LspCodeLens"}, LspSignatureActiveParameter = {link = "Search"}}, syntax = {Comment = {fg = c.grey1, italic = true}, Constant = {fg = c.cyan}, String = {fg = c.green}, Character = {link = "String"}, Number = {fg = c.purple}, Boolean = {fg = c.purple}, Float = {link = "Number"}, Identifier = {fg = c.blue}, Function = {fg = c.green}, Statement = {fg = c.red, italic = true}, Conditional = {fg = c.red}, Repeat = {fg = c.red}, Label = {fg = c.orange}, Operator = {fg = c.orange}, Keyword = {fg = c.red}, Exception = {fg = c.red}, PreProc = {fg = c.purple}, Macro = {fg = c.cyan}, Type = {fg = c.yellow}, StorageClass = {fg = c.orange}, Structure = {fg = c.orange}, Special = {fg = c.yellow}, Tag = {fg = c.orange}, Delimiter = {fg = c.fg0}, SpecialComment = {fg = c.grey1, italic = true}, Debug = {fg = c.orange}, Underlined = {underline = true}, Ignore = {fg = c.grey1}, Error = {fg = c.red}, Todo = {fg = c.purple, italic = true}}, diagnostics = {DiagnosticError = {fg = c.darkRed}, DiagnosticWarn = {fg = c.darkYellow}, DiagnosticInfo = {fg = c.darkBlue}, DiagnosticHint = {fg = c.darkCyan}, DiagnosticOk = {fg = c.darkGreen}, DiagnosticUnderlineError = {fg = c.darkRed, undercurl = true}, DiagnosticUnderlineWarn = {fg = c.darkYellow, undercurl = true}, DiagnosticUnderlineInfo = {fg = c.darkBlue, undercurl = true}, DiagnosticUnderlineHint = {fg = c.darkCyan, undercurl = true}, DiagnosticUnderlineOk = {fg = c.darkGreen, undercurl = true}}}
local term = {c.bg0, c.red, c.green, c.yellow, c.blue, c.magenta, c.cyan, c.fg1, c.grey3, c.lightRed, c.lightGreen, c.lightYellow, c.lightBlue, c.lightMagenta, c.lightCyan, c.fg0}
local default_config = {plugins = {}}
local ctx = {cfg = vim.g.morimo, colors = c}
vim.g.morimo = vim.tbl_deep_extend("force", default_config, (vim.g.morimo or {}))
local function _1_()
  if vim.g.colors_name then vim.cmd('hi clear') end
  vim.g.colors_name = "morimo"
  vim.o.termguicolors = true
  for _, hs in pairs(builtin) do
    apply(hs)
  end
  for _, p in ipairs(vim.g.morimo.plugins) do
    loadPlugin(ctx, p)
  end
  for i, c0 in ipairs(term) do
    vim.g[("terminal_color_" .. (i - 1))] = c0
  end
  return nil
end
local function _2_(name)
  return loadPlugin(ctx, name)
end
return {init = _1_, load = _2_}
