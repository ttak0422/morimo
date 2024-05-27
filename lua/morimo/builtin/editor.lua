-- [nfnl] Compiled from fnl/morimo/builtin/editor.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_(ctx)
  local _let_2_ = ctx
  local c = _let_2_["colors"]
  return {ColorColumn = {bg = c.bg1}, Conceal = {fg = c.grey1, bold = true}, Cursor = {reverse = true}, lCursor = {link = "Cursor"}, CursorIM = {link = "Cursor"}, CursorColumn = {link = "CursorLine"}, CursorLine = {bg = c.bg1}, Directory = {fg = c.green}, DiffAdd = {bg = c.bg_green}, DiffChange = {bg = c.bg_blue}, DiffDelete = {bg = c.bg_red}, DiffText = {fg = c.bg0, bg = c.fg}, EndOfBuffer = {fg = c.bg0}, TermCursor = {link = "Cursor"}, TermCursorNC = {link = "Cursor"}, ErrorMsg = {fg = c.darkRed, bold = true, underline = true}, WinSeparator = {fg = c.bg2, bg = "NONE"}, Folded = {fg = c.grey1}, FoldColumn = {fg = c.grey1}, SignColumn = {fg = c.fg}, IncSearch = {fg = c.bg0, bg = c.lightGreen}, Substitute = {fg = c.bg0, bg = c.yellow}, LineNr = {fg = c.grey0}, CursorLineNr = {fg = c.fg, bold = true}, MatchParen = {bg = c.bg2, bold = true}, ModeMsg = {fg = c.fg, bold = true}, MsgArea = {link = "StatusLine"}, MsgSeparator = {bg = c.bg2}, MoreMsg = {fg = c.yellow, bold = true}, NonText = {fg = c.bg2}, Normal = {fg = c.fg, bg = c.bg0}, NormalFloat = {fg = c.fg, bg = c.bg1}, FloatTitle = {fg = "lightBlue", bold = true}, FloatFooter = {fg = c.bg2}, NormalNC = {link = "Normal"}, Pmenu = {fg = c.fg, bg = c.bg1}, PmenuSel = {fg = c.bg0, bg = c.green}, PmenuSbar = {bg = c.bg1}, PmenuThumb = {bg = c.grey1}, Question = {link = "MoreMsg"}, QuickFixLine = {fg = c.purple}, Search = {fg = c.bg0, bg = c.cyan}, SpecialKey = {fg = c.fg_dim}, SpellBad = {fg = c.red, undercurl = true, sp = c.red}, SpellCap = {fg = c.blue, undercurl = true, sp = c.blue}, SpellLocal = {fg = c.aqua, undercurl = true, sp = c.aqua}, SpellRare = {fg = c.purple, undercurl = true, sp = c.purple}, StatusLine = {fg = c.grey1, bg = c.bg1}, StatusLineNC = {fg = c.grey1, bg = c.bg0}, TabLine = {fg = c.grey2, bg = c.bg3}, TabLineFill = {fg = c.grey1, bg = c.bg1}, TabLineSel = {fg = c.bg0, bg = c.green}, Title = {fg = c.orange, bold = true}, Visual = {bg = c.bg_visual}, VisualNOS = {bg = c.bg_visual}, WarningMsg = {fg = c.yellow, bold = true}, Whitespace = {fg = c.bg3}, WildMenu = {link = "PmenuSel"}, WinBar = {fg = c.fg_dim, bg = "NONE"}, WinBarNC = {fg = c.fg_dim, bg = "NONE"}}
end
return _1_
