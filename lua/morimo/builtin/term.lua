-- [nfnl] Compiled from fnl/morimo/builtin/term.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_(ctx)
  local _let_2_ = ctx
  local c = _let_2_["colors"]
  local cs = {c.bg0, c.red, c.green, c.yellow, c.blue, c.magenta, c.cyan, c.fg1, c.grey3, c.lightRed, c.lightGreen, c.lightYellow, c.lightBlue, c.lightMagenta, c.lightCyan, c.fg0}
  for i, c0 in ipairs(cs) do
    vim.g[("terminal_color_" .. (i - 1))] = c0
  end
  return nil
end
return _1_
