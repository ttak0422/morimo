;; color palette
(local C {;; util
          :fg0 "#b5d2a9"
          :fg1 "#98b18e"
          :bg0 "#2a2a2e"
          :bg1 "#313135"
          :bg2 "#36363a"
          :bg3 "#3f3f43"
          :grey0 "#767b82"
          :grey1 "#7f868c"
          :grey2 "#9aa1a8"
          :grey3 "#b0b7be"
          ;; palette
          :lightRed "#ff6e6e"
          :red "#d76e6e"
          :darkRed "#a25454"
          :lightGreen "#98c593"
          :green "#679f68"
          :darkGreen "#4a6e4a"
          :seaGreen "#729e7b"
          :blue "#789cbc"
          :lightBlue "#9bb9d4"
          :darkBlue "#4d6b83"
          :slateBlue "#607597"
          :cyan "#7aa7b3"
          :lightCyan "#a0c8cc"
          :darkCyan "#54757b"
          :magenta "#b384b1"
          :lightMagenta "#d0a3d0"
          :darkMagenta "#8a5b8a"
          :yellow "#d3c785"
          :lightYellow "#e0d7a3"
          :brown "#8b6e58"
          :darkYellow "#b6a36b"
          :orange "#d99872"
          :purple "#a688a8"
          :violet "#8b85aa"
          ;; sub palette
          :sub_red0 "#793a42"
          :sub_red1 "#8c4a52"
          :sub_red2 "#a15963"
          :sub_red3 "#b56974"
          :sub_green0 "#37574d"
          :sub_green1 "#416960"
          :sub_green2 "#4c7a72"
          :sub_green3 "#578b85"
          :sub_blue0 "#415c6d"
          :sub_blue1 "#4c6a7f"
          :sub_blue2 "#5b7a93"
          :sub_blue3 "#6c8ba7"
          :sub_yellow0 "#5d5c50"
          :sub_yellow1 "#6c6a5c"
          :sub_yellow2 "#7f7c6d"
          :sub_yellow3 "#938e7f"})

(local H {;; ┌──────────────────────────┐
          ;; │ Builtin highlight groups │
          ;; └──────────────────────────┘
          ;; Used for the columns set with colorcolumn.
          :ColorColumn {:bg C.bg1}
          ;; Placeholder characters substituted for concealed text.
          :Conceal {:fg C.grey1 :bold true}
          ;; CurSearch	Used for highlighting a search pattern under the cursor.
          ; :CurSearch {}
          ;; Character under the cursor.
          :Cursor {:reverse true}
          ;; Character under the cursor when language-mapping is used.
          :lCursor {:link :Cursor}
          ;; Like Cursor, but used when in IME mode.
          :CursorIM {:link :Cursor}
          ;; Screen-column at the cursor, when cursorcolumn is set.
          :CursorColumn {:link :CursorLine}
          ;; CursorLine	Screen-line at the cursor, when cursorline is set.
          :CursorLine {:bg C.bg2}
          ;; Directory names.
          :Directory {:fg C.green}
          ;; Diff mode: Added line.
          :DiffAdd {:bg C.sub_green0}
          ;; Diff mode: Changed line.
          :DiffChange {:bg C.sub_blue0}
          ;; Diff mode: Deleted line.
          :DiffDelete {:bg C.sub_red0}
          ;; Diff mode: Changed text within a changed line.
          :DiffText {:fg C.bg0 :bg C.fg0}
          ;; Filler lines (~) after the end of the buffer.
          :EndOfBuffer {:fg C.bg0}
          ;; Cursor in a focused terminal.
          :TermCursor {:link :Cursor}
          ;; Cursor in an unfocused terminal.
          :TermCursorNC {:link :Cursor}
          ;; Error messages on the command line.
          :ErrorMsg {:fg C.darkRed :bold true :underline true}
          ;; Separators between window splits.
          :WinSeparator {:fg C.bg2 :bg :NONE}
          ;; Line used for closed folds.
          :Folded {:fg C.grey1}
          ;; foldcolumn.
          :FoldColumn {:fg C.grey1}
          ;; Column where signs are displayed.
          :SignColumn {:fg C.fg0}
          ;; incsearch highlighting.
          :IncSearch {:fg C.bg0 :bg C.lightGreen}
          ;; :substitute replacement text highlighting.
          :Substitute {:fg C.bg0 :bg C.yellow}
          ;; Line number for :number and :# commands, and when number or relativenumber option is set.
          :LineNr {:fg C.grey0}
          ;; Line number for when the relativenumber option is set, above the cursor line.
          ; :LineNrAbove
          ;; Line number for when the relativenumber option is set, below the cursor line.
          ; :LineNrBelow
          ;; Like LineNr when cursorline is set and cursorlineopt contains number or is both, for the cursor line.
          :CursorLineNr {:fg C.fg0 :bold true}
          ;; Like FoldColumn when cursorline is set for the cursor line.
          ; :CursorLineFold
          ;; Like SignColumn when cursorline is set for the cursor line.
          ; :CursorLineSign
          ;; Character under the cursor or just before it, if it is a paired bracket, and its match.
          :MatchParen {:bg C.bg2 :bold true}
          ;; showmode message.
          :ModeMsg {:fg C.fg0 :bold true}
          ;; Area for messages and cmdline.
          :MsgArea {:link :StatusLine}
          ;; Separator for scrolled messages msgsep.
          :MsgSeparator {:bg C.bg2}
          ;; more-prompt.
          :MoreMsg {:fg C.yellow :bold true}
          ;; @ at the end of the window, characters from showbreak and other characters that do not really exist in the text.
          :NonText {:fg C.grey0}
          ;; Normal text.
          :Normal {:fg C.fg0 :bg C.bg0}
          ;; Normal text in floating windows.
          :NormalFloat {:fg C.fg0 :bg C.bg1}
          ;; Border of floating windows.
          ; :FloatBorder {}
          ;; Title of floating windows.
          :FloatTitle {:fg :lightBlue :bold true}
          ;; Footer of floating windows
          :FloatFooter {:fg C.bg2}
          ;; Normal text in non-current windows.
          :NormalNC {:link :Normal}
          ;; Popup menu: Normal item.
          :Pmenu {:fg C.fg1 :bg C.bg1}
          ;; Popup menu: Selected item>
          :PmenuSel {:fg C.bg0 :bg C.green}
          ;; Popup menu: Normal item kind.
          ; :PmenuKind
          ;; Popup menu: Selected item kind.
          ; :PmenuKindSel
          ;; Popup menu: Normal item extra text.
          ; :PmenuExtra
          ;; Popup menu: Selected item extra text.
          ; :PmenuExtraSel
          ;; Popup menu: Scrollbar.
          :PmenuSbar {:bg C.bg1}
          ;; Popup menu: Thumb of the scrollbar.
          :PmenuThumb {:bg C.grey1}
          ;; hit-enter prompt and yes/no questions.
          :Question {:link :MoreMsg}
          ;; Current quickfix item in the quickfix window.
          :QuickFixLine {:fg C.purple}
          ;; Last search pattern highlighting.
          :Search {:fg C.bg0 :bg C.cyan}
          ;; Unprintable characters.
          :SpecialKey {:fg C.fg1}
          ;; Word that is not recognized by the spellchecker.
          :SpellBad {:fg C.red :undercurl true :sp C.red}
          ;; Word that should start with a capital.
          :SpellCap {:fg C.blue :undercurl true :sp C.blue}
          ;; SpellLocal	Word that is recognized by the spellchecker as one that is used in another region.
          :SpellLocal {:fg C.cyan :undercurl true :sp C.cyan}
          ;; SpellRare	Word that is recognized by the spellchecker as one that is hardly ever used.
          :SpellRare {:fg C.purple :undercurl true :sp C.purple}
          ;; Status line of current window.
          :StatusLine {:fg C.grey1 :bg C.bg1}
          ;; Status lines of not-current windows.
          :StatusLineNC {:fg C.grey0 :bg C.bg1}
          ;; Tab pages line, not active tab page label.
          :TabLine {:fg C.grey2 :bg C.bg3}
          ;; Tab pages line, where there are no labels.
          :TabLineFill {:fg C.grey1 :bg C.bg1}
          ;; Tab pages line, active tab page label.
          :TabLineSel {:fg C.bg0 :bg C.green}
          ;; Titles for output from :set all, :autocmd etc.
          :Title {:fg C.orange :bold true}
          ;; Visual mode selection.
          :Visual {:bg C.bg3}
          ;; Visual mode selection when vim is Not Owning the Selection.
          :VisualNOS {:bg C.bg3}
          ;; Warning messages.
          :WarningMsg {:fg C.yellow :bold true}
          ;; Whitespace	nbsp, space, tab, multispace, lead and trail.
          :Whitespace {:fg C.bg3}
          ;; Current match in wildmenu completion.
          :WildMenu {:link :PmenuSel}
          ;; Window bar of current window.
          :WinBar {:fg C.fg1 :bg :NONE}
          ;; Window bar of not-current windows.
          :WinBarNC {:fg C.fg1 :bg :NONE}
          ;; ┌──────────────────────┐
          ;; │ Lsp highlight groups │
          ;; └──────────────────────┘
          ;; Used for highlighting "text" references
          :LspReferenceText {:fg C.bg0 :bg C.darkYellow}
          ;; Used for highlighting "read" references
          :LspReferenceRead {:link :LspReferenceText}
          ;; Used for highlighting "write" references
          :LspReferenceWrite {:fg C.bg0 :bg C.darkYellow :underline true}
          ;; Used to color the virtual text of the codelens.
          :LspCodeLens {:fg C.grey1}
          ;; Used to color the separator between two or more code lenses.
          :LspCodeLensSeparator {:link :LspCodeLens}
          ;; Used to highlight the active parameter in the signature help.
          :LspSignatureActiveParameter {:link :Search}
          ;; ┌───────────────────────────────┐
          ;; │ Lsp semantic highlight groups │
          ;; └───────────────────────────────┘
          ; "@lsp.type.class"         { :link :Structure }
          ; "@lsp.type.decorator"     { :link :Function }
          ; "@lsp.type.enum"          { :link :Structure }
          ; "@lsp.type.enumMember"    { :link :Constant }
          ; "@lsp.type.function"      { :link :Function }
          ; "@lsp.type.interface"     { :link :Structure }
          ; "@lsp.type.macro"         { :link :Macro }
          ; "@lsp.type.method"        { :link :Function }
          ; "@lsp.type.namespace"     { :link :Structure }
          ; "@lsp.type.parameter"     { :link :Identifier }
          ; "@lsp.type.property"      { :link :Identifier }
          ; "@lsp.type.struct"        { :link :Structure }
          ; "@lsp.type.type"          { :link :Type }
          ; "@lsp.type.typeParameter" { :link :TypeDef }
          ; "@lsp.type.variable"      { :link :Identifier }
          ;; ┌─────────────────────────┐
          ;; │ Syntax highlight groups │
          ;; └─────────────────────────┘
          ;; ** Any comment. **
          :Comment {:fg C.grey1 :italic true}
          ;; ** Any constant. **
          :Constant {:fg C.cyan}
          ;; A string constant: "this is a string".
          :String {:fg C.green}
          ;; A character constant: 'c', '\n'.
          :Character {:link :String}
          ;; A number constant: 234, 0xff.
          :Number {:fg C.purple}
          ;; A boolean constant: TRUE, false.
          :Boolean {:fg C.purple}
          ;; A floating point constant: 2.3e10.
          :Float {:link :Number}
          ;; ** Any variable name. **
          :Identifier {:fg C.blue}
          ;; Function name (also: methods for classes).
          :Function {:fg C.green}
          ;; ** Any statement. **
          :Statement {:fg C.red :italic true}
          ;; "if", "then", "else", "endif", "switch", etc.
          :Conditional {:fg C.red}
          ;; "for", "do", "while", etc.
          :Repeat {:fg C.red}
          ;; "case", "default", etc.
          :Label {:fg C.orange}
          ;; "sizeof", "+", "*", etc.
          :Operator {:fg C.orange}
          ;; Any other keyword
          :Keyword {:fg C.red}
          ;; "try", "catch", "throw".
          :Exception {:fg C.red}
          ;; ** Generic Preprocessor. **
          :PreProc {:fg C.purple}
          ;; Preprocessor #include.
          ; Include
          ;; Preprocessor #define.
          ; Define
          ;; Same as Define.
          :Macro {:fg C.cyan}
          ;; preprocessor #if, #else, #endif, etc.
          ; PreCondit
          ;; ** int, long, char, etc. **
          :Type {:fg C.yellow}
          ;; static, register, volatile, etc.
          :StorageClass {:fg C.orange}
          ;; struct, union, enum, etc.
          :Structure {:fg C.orange}
          ; ;; A typedef.
          ; :Typedef {:link :Type}
          ;; ** Any special symbol. **
          :Special {:fg C.yellow}
          ; ;; Special character in a constant.
          ; :SpecialChar {:link :Special}
          ;; You can use CTRL-] on this.
          :Tag {:fg C.orange}
          ;; Character that needs attention.
          :Delimiter {:fg C.fg0}
          ;; Special things inside a comment.
          :SpecialComment {:fg C.grey1 :italic true}
          ;; Debugging statements.
          :Debug {:fg C.orange}
          ;; ** Test that stands out, HTML links. **
          :Underlined {:underline true}
          ;; ** Left blank, hidden. **
          :Ignore {:fg C.grey1}
          ;; ** Any erroneous construct. **
          :Error {:fg C.red}
          ;; ** Anything that needs extra attention; mostly the keywords TODO FIXME WARNING and XXX. **
          :Todo {:fg C.purple :italic true}
          ;; Other Diagnostic highlights link to this by default (except Underline)
          :DiagnosticError {:fg C.darkRed}
          :DiagnosticWarn {:fg C.darkYellow}
          :DiagnosticInfo {:fg C.darkBlue}
          :DiagnosticHint {:fg C.darkCyan}
          :DiagnosticOk {:fg C.darkGreen}
          ; :DiagnosticVirtualTextError {}
          ; :DiagnosticVirtualTextWarn {}
          ; :DiagnosticVirtualTextInfo {}
          ; :DiagnosticVirtualTextHint {}
          ; :DiagnosticVirtualTextOk {}
          :DiagnosticUnderlineError {:fg C.darkRed :undercurl true}
          :DiagnosticUnderlineWarn {:fg C.darkYellow :undercurl true}
          :DiagnosticUnderlineInfo {:fg C.darkBlue :undercurl true}
          :DiagnosticUnderlineHint {:fg C.darkCyan :undercurl true}
          :DiagnosticUnderlineOk {:fg C.darkGreen :undercurl true}
          ; :DiagnosticFloatingError {}
          ; :DiagnosticFloatingWarn {}
          ; :DiagnosticFloatingInfo {}
          ; :DiagnosticFloatingHint {}
          ; :DiagnosticFloatingOk {}
          ; :DiagnosticSignError {}
          ; :DiagnosticSignWarn {}
          ; :DiagnosticSignInfo {}
          ; :DiagnosticSignHint {}
          ; :DiagnosticSignOk {}
          ; :DiagnosticDeprecated {}
          ; :DiagnosticUnnecessary {}
          })

(local T [;; black
          C.bg0
          ;; red
          C.red
          ;; green
          C.green
          ;; yellow
          C.yellow
          ;; blue
          C.blue
          ;; magenta
          C.magenta
          ;; cyan
          C.cyan
          ;; white
          C.fg1
          ;; bright black
          C.grey3
          ;; bright red
          C.lightRed
          ;; bright green
          C.lightGreen
          ;; bright green
          C.lightYellow
          ;; bright green
          C.lightBlue
          ;; bright magenta
          C.lightMagenta
          ;; bright magenta
          C.lightCyan
          ;; bright white
          C.fg0])

(local M {})
(lua "package.preload['morimo.colors']=function()return C end;M.loaded={}M.load=function(a)for b,c in pairs(require('morimo.plugins.'..a))do M.loaded[a]=true;vim.api.nvim_set_hl(0,b,c)end end;M.init=function()vim.cmd('hi clear')vim.g.colors_name='morimo'for b,c in pairs(H)do vim.api.nvim_set_hl(0,b,c)end;for b,c in ipairs(T)do vim.g['terminal_color_'..b-1]=c end;for b,d in pairs(M.loaded)do M.load(f)end end")
M
