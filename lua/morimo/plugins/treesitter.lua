-- [nfnl] Compiled from fnl/morimo/plugins/treesitter.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_(ctx)
  local _let_2_ = ctx
  local c = _let_2_["color"]
  return {["@variable"] = {fg = c.fg}, ["@variable.builtin"] = {fg = c.purple, italic = true}, ["@variable.parameter"] = {fg = c.lightMagenta}, ["@string.regexp"] = {fg = c.brown}, ["@string.escape"] = {fg = c.brown, bold = true}, ["@string.special.symbol"] = {fg = c.blue}, ["@string.special.url"] = {fg = c.yellow, undercurl = true}, ["@attribute"] = {link = "Constant"}, ["@constructor"] = {fg = c.yellow}, ["@operator"] = {link = "Operator"}, ["@keyword.operator"] = {fg = c.orange, bold = true}, ["@keyword.import"] = {link = "PreProc"}, ["@punctuation.delimiter"] = {fg = c.lightMagenta}, ["@punctuation.bracket"] = {fg = c.lightMagenta}, ["@punctuation.special"] = {fg = c.lightMagenta}, ["@comment.error"] = {fg = c.fg, bg = c.darkRed, bold = true}, ["@comment.warning"] = {fg = c.bg0, bg = c.yellow, bold = true}, ["@comment.note"] = {fg = c.bg0, bg = c.lightBlue, bold = true}}
end
return _1_
