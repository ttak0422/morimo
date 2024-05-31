-- [nfnl] Compiled from fnl/morimo/init.fnl by https://github.com/Olical/nfnl, do not edit.
local c = require("morimo.colors")
local editor = {ColorColumn = {bg = c.bg1}, Conceal = {fg = c.grey1, bold = true}, Cursor = {reverse = true}, lCursor = {link = "Cursor"}, CursorIM = {link = "Cursor"}, CursorColumn = {link = "CursorLine"}, CursorLine = {bg = c.bg2}, Directory = {fg = c.green}, DiffAdd = {bg = c.sub_green0}, DiffChange = {bg = c.sub_blue0}, DiffDelete = {bg = c.sub_red0}, DiffText = {fg = c.bg0, bg = c.fg0}, EndOfBuffer = {fg = c.bg0}, TermCursor = {link = "Cursor"}, TermCursorNC = {link = "Cursor"}, ErrorMsg = {fg = c.darkRed, bold = true, underline = true}, WinSeparator = {fg = c.bg2, bg = "NONE"}, Folded = {fg = c.grey1}, FoldColumn = {fg = c.grey1}, SignColumn = {fg = c.fg0}, IncSearch = {fg = c.bg0, bg = c.lightGreen}, Substitute = {fg = c.bg0, bg = c.yellow}, LineNr = {fg = c.grey0}, CursorLineNr = {fg = c.fg0, bold = true}, MatchParen = {bg = c.bg2, bold = true}, ModeMsg = {fg = c.fg0, bold = true}, MsgArea = {link = "StatusLine"}, MsgSeparator = {bg = c.bg2}, MoreMsg = {fg = c.yellow, bold = true}, NonText = {fg = c.grey0}, Normal = {fg = c.fg0, bg = c.bg0}, NormalFloat = {fg = c.fg0, bg = c.bg1}, FloatTitle = {fg = "lightBlue", bold = true}, FloatFooter = {fg = c.bg2}, NormalNC = {link = "Normal"}, Pmenu = {fg = c.fg1, bg = c.bg1}, PmenuSel = {fg = c.bg0, bg = c.green}, PmenuSbar = {bg = c.bg1}, PmenuThumb = {bg = c.grey1}, Question = {link = "MoreMsg"}, QuickFixLine = {fg = c.purple}, Search = {fg = c.bg0, bg = c.cyan}, SpecialKey = {fg = c.fg1}, SpellBad = {fg = c.red, undercurl = true, sp = c.red}, SpellCap = {fg = c.blue, undercurl = true, sp = c.blue}, SpellLocal = {fg = c.aqua, undercurl = true, sp = c.aqua}, SpellRare = {fg = c.purple, undercurl = true, sp = c.purple}, StatusLine = {fg = c.grey1, bg = c.bg1}, StatusLineNC = {fg = c.grey0, bg = c.bg1}, TabLine = {fg = c.grey2, bg = c.bg3}, TabLineFill = {fg = c.grey1, bg = c.bg1}, TabLineSel = {fg = c.bg0, bg = c.green}, Title = {fg = c.orange, bold = true}, Visual = {bg = c.bg3}, VisualNOS = {bg = c.bg3}, WarningMsg = {fg = c.yellow, bold = true}, Whitespace = {fg = c.bg3}, WildMenu = {link = "PmenuSel"}, WinBar = {fg = c.fg1, bg = "NONE"}, WinBarNC = {fg = c.fg1, bg = "NONE"}}
local lsp = {LspReferenceText = {fg = c.bg0, bg = c.darkYellow}, LspReferenceRead = {link = "LspReferenceText"}, LspReferenceWrite = {fg = c.bg0, bg = c.darkYellow, underline = true}, LspCodeLens = {fg = c.grey1}, LspCodeLensSeparator = {link = "LspCodeLens"}, LspSignatureActiveParameter = {link = "Search"}}
local syntax = {Comment = {fg = c.grey1, italic = true}, Constant = {fg = c.aqua}, String = {fg = c.green}, Character = {link = "String"}, Number = {fg = c.purple}, Boolean = {fg = c.purple}, Float = {link = "Number"}, Identifier = {fg = c.blue}, Function = {fg = c.green}, Statement = {fg = c.red, italic = true}, Conditional = {fg = c.red}, Repeat = {fg = c.red}, Label = {fg = c.orange}, Operator = {fg = c.orange}, Keyword = {fg = c.red}, Exception = {fg = c.red}, PreProc = {fg = c.purple}, Macro = {fg = c.aqua}, Type = {fg = c.yellow}, StorageClass = {fg = c.orange}, Structure = {fg = c.orange}, Special = {fg = c.yellow}, Tag = {fg = c.orange}, Delimiter = {fg = c.fg0}, SpecialComment = {fg = c.grey1, italic = true}, Debug = {fg = c.orange}, Underlined = {underline = true}, Ignore = {fg = c.grey1}, Error = {fg = c.red}, Todo = {fg = c.purple, italic = true}}
local diagnnostics = {DiagnosticError = {fg = c.darkRed}, DiagnosticWarn = {fg = c.darkYellow}, DiagnosticInfo = {fg = c.darkBlue}, DiagnosticHint = {fg = c.darkCyan}, DiagnosticOk = {fg = c.darkGreen}, DiagnosticUnderlineError = {fg = c.darkRed, undercurl = true}, DiagnosticUnderlineWarn = {fg = c.darkYellow, undercurl = true}, DiagnosticUnderlineInfo = {fg = c.darkBlue, undercurl = true}, DiagnosticUnderlineHint = {fg = c.darkCyan, undercurl = true}, DiagnosticUnderlineOk = {fg = c.darkGreen, undercurl = true}}
local term = {c.bg0, c.red, c.green, c.yellow, c.blue, c.magenta, c.cyan, c.fg1, c.grey3, c.lightRed, c.lightGreen, c.lightYellow, c.lightBlue, c.lightMagenta, c.lightCyan, c.fg0}
local default_config = {plugins = {}}
local ctx = {cfg = vim.g.morimo, colors = c}
local apply
local function _1_(highlights)
  for hl, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, hl, spec)
  end
  return nil
end
apply = _1_
vim.g.morimo = vim.tbl_deep_extend("force", default_config, (vim.g.morimo or {}))
local function _2_()
  do
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
    vim.g.colors_name = "morimo"
    vim.o.termguicolors = true
    for _, hs in ipairs({editor, lsp, syntax, diagnnostics}) do
      apply(hs)
    end
    for _, f in ipairs(plugins) do
      apply(f(ctx))
    end
  end
  for i, c0 in ipairs(term) do
    vim.g[("terminal_color_" .. (i - 1))] = c0
  end
  return nil
end
local function _5_(name)
  return apply(require(("morimo.plugins." .. name))(ctx))
end
return {init = _2_, load = _5_}
