-- [nfnl] Compiled from fnl/morimo/plugins/cmp.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_(ctx)
  local _let_2_ = ctx
  local c = _let_2_["colors"]
  return {CmpItemAbbr = {link = "Pmenu"}, CmpItemAbbrDeprecated = {fg = c.grey1, strikethrough = true}, CmpItemAbbrMatch = {fg = c.fg0, bold = true}, CmpItemAbbrMatchFuzzy = {link = "CmpItemAbbr"}, CmpItemMenu = {link = "Pmenu"}}
end
return _1_
