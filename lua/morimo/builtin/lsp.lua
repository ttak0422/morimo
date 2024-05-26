-- [nfnl] Compiled from fnl/morimo/builtin/lsp.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_(ctx)
  local _let_2_ = ctx
  local c = _let_2_["color"]
  return {LspReferenceText = {fg = c.bg0, bg = c.darkYellow}, LspReferenceRead = {link = "LspReferenceText"}, LspReferenceWrite = {fg = c.bg0, bg = c.darkYellow, underline = true}, LspCodeLens = {fg = c.grey1}, LspCodeLensSeparator = {link = "LspCodeLens"}, LspSignatureActiveParameter = {link = "Search"}}
end
return _1_
