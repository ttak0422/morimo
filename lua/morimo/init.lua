-- [nfnl] Compiled from fnl/morimo/init.fnl by https://github.com/Olical/nfnl, do not edit.
local color = require("morimo.color")
local default_config = {plugins = {}}
local ctx
local function _1_()
  return {cfg = vim.g.morimo, color = color}
end
ctx = _1_
local apply
local function _2_(highlights)
  for hl, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, hl, spec)
  end
  return nil
end
apply = _2_
vim.g.morimo = vim.tbl_deep_extend("force", default_config, (vim.g.morimo or {}))
local function _3_()
  local plugins
  do
    local tbl_17_auto = {}
    local i_18_auto = #tbl_17_auto
    for _, p in ipairs(vim.g.morimo.plugins) do
      local val_19_auto = require(("morimo.plugins." .. p))
      if (nil ~= val_19_auto) then
        i_18_auto = (i_18_auto + 1)
        do end (tbl_17_auto)[i_18_auto] = val_19_auto
      else
      end
    end
    plugins = tbl_17_auto
  end
  if vim.g.colors_name then
    vim.cmd("hi clear")
  else
  end
  vim.g.colors_name = "e"
  vim.o.termguicolors = true
  for _, f in ipairs({require("morimo.builtin.editor"), require("morimo.builtin.syntax"), unpack(plugins)}) do
    apply(f(ctx()))
  end
  return nil
end
local function _6_(name)
  return apply(require(("morimo.plugins." .. name))(ctx()))
end
return {init = _3_, load = _6_}
