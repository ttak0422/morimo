-- [nfnl] Compiled from fnl/morimo/init.fnl by https://github.com/Olical/nfnl, do not edit.
vim.g.morimo=vim.tbl_deep_extend('force',{plugins={}},vim.g.morimo or{})
local C = {fg0 = "#b5d2a9", fg1 = "#98b18e", bg0 = "#2a2a2e", bg1 = "#313135", bg2 = "#36363a", bg3 = "#3f3f43", grey0 = "#767b82", grey1 = "#7f868c", grey2 = "#9aa1a8", grey3 = "#b0b7be", lightRed = "#ff6e6e", red = "#d76e6e", darkRed = "#a25454", lightGreen = "#98c593", green = "#679f68", darkGreen = "#4a6e4a", seaGreen = "#729e7b", blue = "#789cbc", lightBlue = "#9bb9d4", darkBlue = "#4d6b83", slateBlue = "#607597", cyan = "#7aa7b3", lightCyan = "#a0c8cc", darkCyan = "#54757b", magenta = "#b384b1", lightMagenta = "#d0a3d0", darkMagenta = "#8a5b8a", yellow = "#d3c785", lightYellow = "#e0d7a3", brown = "#8b6e58", darkYellow = "#b6a36b", orange = "#d99872", purple = "#a688a8", violet = "#8b85aa", sub_red0 = "#793a42", sub_red1 = "#8c4a52", sub_red2 = "#a15963", sub_red3 = "#b56974", sub_green0 = "#37574d", sub_green1 = "#416960", sub_green2 = "#4c7a72", sub_green3 = "#578b85", sub_blue0 = "#415c6d", sub_blue1 = "#4c6a7f", sub_blue2 = "#5b7a93", sub_blue3 = "#6c8ba7", sub_yellow0 = "#5d5c50", sub_yellow1 = "#6c6a5c", sub_yellow2 = "#7f7c6d", sub_yellow3 = "#938e7f"}
local H = {ColorColumn = {bg = C.bg1}, Conceal = {fg = C.grey1, bold = true}, Cursor = {reverse = true}, lCursor = {link = "Cursor"}, CursorIM = {link = "Cursor"}, CursorColumn = {link = "CursorLine"}, CursorLine = {bg = C.bg2}, Directory = {fg = C.green}, DiffAdd = {bg = C.sub_green0}, DiffChange = {bg = C.sub_blue0}, DiffDelete = {bg = C.sub_red0}, DiffText = {fg = C.bg0, bg = C.fg0}, EndOfBuffer = {fg = C.bg0}, TermCursor = {link = "Cursor"}, TermCursorNC = {link = "Cursor"}, ErrorMsg = {fg = C.darkRed, bold = true, underline = true}, WinSeparator = {fg = C.bg2, bg = "NONE"}, Folded = {fg = C.grey1}, FoldColumn = {fg = C.grey1}, SignColumn = {fg = C.fg0}, IncSearch = {fg = C.bg0, bg = C.lightGreen}, Substitute = {fg = C.bg0, bg = C.yellow}, LineNr = {fg = C.grey0}, CursorLineNr = {fg = C.fg0, bold = true}, MatchParen = {bg = C.bg2, bold = true}, ModeMsg = {fg = C.fg0, bold = true}, MsgArea = {link = "StatusLine"}, MsgSeparator = {bg = C.bg2}, MoreMsg = {fg = C.yellow, bold = true}, NonText = {fg = C.grey0}, Normal = {fg = C.fg0, bg = C.bg0}, NormalFloat = {fg = C.fg0, bg = C.bg1}, FloatTitle = {fg = "lightBlue", bold = true}, FloatFooter = {fg = C.bg2}, NormalNC = {link = "Normal"}, Pmenu = {fg = C.fg1, bg = C.bg1}, PmenuSel = {fg = C.bg0, bg = C.green}, PmenuSbar = {bg = C.bg1}, PmenuThumb = {bg = C.grey1}, Question = {link = "MoreMsg"}, QuickFixLine = {fg = C.purple}, Search = {fg = C.bg0, bg = C.cyan}, SpecialKey = {fg = C.fg1}, SpellBad = {fg = C.red, undercurl = true, sp = C.red}, SpellCap = {fg = C.blue, undercurl = true, sp = C.blue}, SpellLocal = {fg = C.cyan, undercurl = true, sp = C.cyan}, SpellRare = {fg = C.purple, undercurl = true, sp = C.purple}, StatusLine = {fg = C.grey1, bg = C.bg1}, StatusLineNC = {fg = C.grey0, bg = C.bg1}, TabLine = {fg = C.grey2, bg = C.bg3}, TabLineFill = {fg = C.grey1, bg = C.bg1}, TabLineSel = {fg = C.bg0, bg = C.green}, Title = {fg = C.orange, bold = true}, Visual = {bg = C.bg3}, VisualNOS = {bg = C.bg3}, WarningMsg = {fg = C.yellow, bold = true}, Whitespace = {fg = C.bg3}, WildMenu = {link = "PmenuSel"}, WinBar = {fg = C.fg1, bg = "NONE"}, WinBarNC = {fg = C.fg1, bg = "NONE"}, LspReferenceText = {fg = C.bg0, bg = C.darkYellow}, LspReferenceRead = {link = "LspReferenceText"}, LspReferenceWrite = {fg = C.bg0, bg = C.darkYellow, underline = true}, LspCodeLens = {fg = C.grey1}, LspCodeLensSeparator = {link = "LspCodeLens"}, LspSignatureActiveParameter = {link = "Search"}, Comment = {fg = C.grey1, italic = true}, Constant = {fg = C.cyan}, String = {fg = C.green}, Character = {link = "String"}, Number = {fg = C.purple}, Boolean = {fg = C.purple}, Float = {link = "Number"}, Identifier = {fg = C.blue}, Function = {fg = C.green}, Statement = {fg = C.red, italic = true}, Conditional = {fg = C.red}, Repeat = {fg = C.red}, Label = {fg = C.orange}, Operator = {fg = C.orange}, Keyword = {fg = C.red}, Exception = {fg = C.red}, PreProc = {fg = C.purple}, Macro = {fg = C.cyan}, Type = {fg = C.yellow}, StorageClass = {fg = C.orange}, Structure = {fg = C.orange}, Special = {fg = C.yellow}, Tag = {fg = C.orange}, Delimiter = {fg = C.fg0}, SpecialComment = {fg = C.grey1, italic = true}, Debug = {fg = C.orange}, Underlined = {underline = true}, Ignore = {fg = C.grey1}, Error = {fg = C.red}, Todo = {fg = C.purple, italic = true}, DiagnosticError = {fg = C.darkRed}, DiagnosticWarn = {fg = C.darkYellow}, DiagnosticInfo = {fg = C.darkBlue}, DiagnosticHint = {fg = C.darkCyan}, DiagnosticOk = {fg = C.darkGreen}, DiagnosticUnderlineError = {fg = C.darkRed, undercurl = true}, DiagnosticUnderlineWarn = {fg = C.darkYellow, undercurl = true}, DiagnosticUnderlineInfo = {fg = C.darkBlue, undercurl = true}, DiagnosticUnderlineHint = {fg = C.darkCyan, undercurl = true}, DiagnosticUnderlineOk = {fg = C.darkGreen, undercurl = true}}
local T = {C.bg0, C.red, C.green, C.yellow, C.blue, C.magenta, C.cyan, C.fg1, C.grey3, C.lightRed, C.lightGreen, C.lightYellow, C.lightBlue, C.lightMagenta, C.lightCyan, C.fg0}
local M = {}
package.preload['morimo.colors']=function()return C end;M.load=function(a)for b,c in pairs(require('morimo.plugins.'..a)(C))do vim.g.morimo.plugins[a]=true;vim.api.nvim_set_hl(0,b,c)end end;M.init=function()vim.cmd('hi clear')vim.g.colors_name='morimo'for b,c in pairs(H)do vim.api.nvim_set_hl(0,b,c)end;for b,c in pairs(vim.g.morimo.plugins)do if c then M.load(b)end end;for d,e in ipairs(T)do vim.g['terminal_color_'..d-1]=e end end
return M
