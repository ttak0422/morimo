-- [nfnl] Compiled from fnl/morimo/plugins/gitsigns.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_(ctx)
  local _let_2_ = ctx
  local c = _let_2_["color"]
  return {GitSignsAdd = {fg = c.lightGreen}, GitSignsChange = {fg = c.lightBlue}, GitSignsDelete = {fg = c.lightRed}}
end
return _1_
