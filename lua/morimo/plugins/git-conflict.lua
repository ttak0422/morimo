-- [nfnl] Compiled from fnl/morimo/plugins/git-conflict.fnl by https://github.com/Olical/nfnl, do not edit.
local c = require("morimo.colors")
return {GitConflictCurrent = {fg = c.bg1, bg = c.fg1, bold = true}, GitConflictIncoming = {fg = c.fg0, bg = c.sub_green0, bold = true}, GitConflictAncestor = {fg = c.fg0, bg = c.sub_blue0, bold = true}, GitConflictCurrentLabel = {fg = c.fg0}, GitConflictIncomingLabel = {fg = c.fg0}, GitConflictAncestorLabel = {fg = c.fg0}}
