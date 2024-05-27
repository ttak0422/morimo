-- [nfnl] Compiled from fnl/morimo/builtin/syntax.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_(ctx)
  local _let_2_ = ctx
  local c = _let_2_["colors"]
  return {Comment = {fg = c.grey1, italic = true}, Constant = {fg = c.aqua}, String = {fg = c.green}, Character = {link = "String"}, Number = {fg = c.purple}, Boolean = {fg = c.purple}, Float = {link = "Number"}, Identifier = {fg = c.blue}, Function = {fg = c.green}, Statement = {fg = c.red, italic = true}, Conditional = {fg = c.red}, Repeat = {fg = c.red}, Label = {fg = c.orange}, Operator = {fg = c.orange}, Keyword = {fg = c.red}, Exception = {fg = c.red}, PreProc = {fg = c.purple}, Macro = {fg = c.aqua}, Type = {fg = c.yellow}, StorageClass = {fg = c.orange}, Structure = {fg = c.orange}, Special = {fg = c.yellow}, Tag = {fg = c.orange}, Delimiter = {fg = c.fg}, SpecialComment = {fg = c.grey1, italic = true}, Debug = {fg = c.orange}, Underlined = {underline = true}, Ignore = {fg = c.grey1}, Error = {fg = c.red}, Todo = {fg = c.purple, italic = true}}
end
return _1_
