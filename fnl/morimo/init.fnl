;; apply highlights
(lua "local function apply(highlights)for hl,spec in pairs(highlights)do vim.api.nvim_set_hl(0,hl,spec)end end")
(lua "local function loadPlugin(ctx,name)apply(require('morimo.plugins.'..name)(ctx))end")
(let [c (include :morimo.colors)
      builtin {:editor {;; ┌──────────────────────────┐
                        ;; │ Builtin highlight groups │
                        ;; └──────────────────────────┘
                        ;; Used for the columns set with colorcolumn.
                        :ColorColumn {:bg c.bg1}
                        ;; Placeholder characters substituted for concealed text.
                        :Conceal {:fg c.grey1 :bold true}
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
                        :CursorLine {:bg c.bg2}
                        ;; Directory names.
                        :Directory {:fg c.green}
                        ;; Diff mode: Added line.
                        :DiffAdd {:bg c.sub_green0}
                        ;; Diff mode: Changed line.
                        :DiffChange {:bg c.sub_blue0}
                        ;; Diff mode: Deleted line.
                        :DiffDelete {:bg c.sub_red0}
                        ;; Diff mode: Changed text within a changed line.
                        :DiffText {:fg c.bg0 :bg c.fg0}
                        ;; Filler lines (~) after the end of the buffer.
                        :EndOfBuffer {:fg c.bg0}
                        ;; Cursor in a focused terminal.
                        :TermCursor {:link :Cursor}
                        ;; Cursor in an unfocused terminal.
                        :TermCursorNC {:link :Cursor}
                        ;; Error messages on the command line.
                        :ErrorMsg {:fg c.darkRed :bold true :underline true}
                        ;; Separators between window splits.
                        :WinSeparator {:fg c.bg2 :bg :NONE}
                        ;; Line used for closed folds.
                        :Folded {:fg c.grey1}
                        ;; foldcolumn.
                        :FoldColumn {:fg c.grey1}
                        ;; Column where signs are displayed.
                        :SignColumn {:fg c.fg0}
                        ;; incsearch highlighting.
                        :IncSearch {:fg c.bg0 :bg c.lightGreen}
                        ;; :substitute replacement text highlighting.
                        :Substitute {:fg c.bg0 :bg c.yellow}
                        ;; Line number for :number and :# commands, and when number or relativenumber option is set.
                        :LineNr {:fg c.grey0}
                        ;; Line number for when the relativenumber option is set, above the cursor line.
                        ; :LineNrAbove
                        ;; Line number for when the relativenumber option is set, below the cursor line.
                        ; :LineNrBelow
                        ;; Like LineNr when cursorline is set and cursorlineopt contains number or is both, for the cursor line.
                        :CursorLineNr {:fg c.fg0 :bold true}
                        ;; Like FoldColumn when cursorline is set for the cursor line.
                        ; :CursorLineFold
                        ;; Like SignColumn when cursorline is set for the cursor line.
                        ; :CursorLineSign
                        ;; Character under the cursor or just before it, if it is a paired bracket, and its match.
                        :MatchParen {:bg c.bg2 :bold true}
                        ;; showmode message.
                        :ModeMsg {:fg c.fg0 :bold true}
                        ;; Area for messages and cmdline.
                        :MsgArea {:link :StatusLine}
                        ;; Separator for scrolled messages msgsep.
                        :MsgSeparator {:bg c.bg2}
                        ;; more-prompt.
                        :MoreMsg {:fg c.yellow :bold true}
                        ;; @ at the end of the window, characters from showbreak and other characters that do not really exist in the text.
                        :NonText {:fg c.grey0}
                        ;; Normal text.
                        :Normal {:fg c.fg0 :bg c.bg0}
                        ;; Normal text in floating windows.
                        :NormalFloat {:fg c.fg0 :bg c.bg1}
                        ;; Border of floating windows.
                        ; :FloatBorder {}
                        ;; Title of floating windows.
                        :FloatTitle {:fg :lightBlue :bold true}
                        ;; Footer of floating windows
                        :FloatFooter {:fg c.bg2}
                        ;; Normal text in non-current windows.
                        :NormalNC {:link :Normal}
                        ;; Popup menu: Normal item.
                        :Pmenu {:fg c.fg1 :bg c.bg1}
                        ;; Popup menu: Selected item>
                        :PmenuSel {:fg c.bg0 :bg c.green}
                        ;; Popup menu: Normal item kind.
                        ; :PmenuKind
                        ;; Popup menu: Selected item kind.
                        ; :PmenuKindSel
                        ;; Popup menu: Normal item extra text.
                        ; :PmenuExtra
                        ;; Popup menu: Selected item extra text.
                        ; :PmenuExtraSel
                        ;; Popup menu: Scrollbar.
                        :PmenuSbar {:bg c.bg1}
                        ;; Popup menu: Thumb of the scrollbar.
                        :PmenuThumb {:bg c.grey1}
                        ;; hit-enter prompt and yes/no questions.
                        :Question {:link :MoreMsg}
                        ;; Current quickfix item in the quickfix window.
                        :QuickFixLine {:fg c.purple}
                        ;; Last search pattern highlighting.
                        :Search {:fg c.bg0 :bg c.cyan}
                        ;; Unprintable characters.
                        :SpecialKey {:fg c.fg1}
                        ;; Word that is not recognized by the spellchecker.
                        :SpellBad {:fg c.red :undercurl true :sp c.red}
                        ;; Word that should start with a capital.
                        :SpellCap {:fg c.blue :undercurl true :sp c.blue}
                        ;; SpellLocal	Word that is recognized by the spellchecker as one that is used in another region.
                        :SpellLocal {:fg c.cyan :undercurl true :sp c.cyan}
                        ;; SpellRare	Word that is recognized by the spellchecker as one that is hardly ever used.
                        :SpellRare {:fg c.purple :undercurl true :sp c.purple}
                        ;; Status line of current window.
                        :StatusLine {:fg c.grey1 :bg c.bg1}
                        ;; Status lines of not-current windows.
                        :StatusLineNC {:fg c.grey0 :bg c.bg1}
                        ;; Tab pages line, not active tab page label.
                        :TabLine {:fg c.grey2 :bg c.bg3}
                        ;; Tab pages line, where there are no labels.
                        :TabLineFill {:fg c.grey1 :bg c.bg1}
                        ;; Tab pages line, active tab page label.
                        :TabLineSel {:fg c.bg0 :bg c.green}
                        ;; Titles for output from :set all, :autocmd etc.
                        :Title {:fg c.orange :bold true}
                        ;; Visual mode selection.
                        :Visual {:bg c.bg3}
                        ;; Visual mode selection when vim is Not Owning the Selection.
                        :VisualNOS {:bg c.bg3}
                        ;; Warning messages.
                        :WarningMsg {:fg c.yellow :bold true}
                        ;; Whitespace	nbsp, space, tab, multispace, lead and trail.
                        :Whitespace {:fg c.bg3}
                        ;; Current match in wildmenu completion.
                        :WildMenu {:link :PmenuSel}
                        ;; Window bar of current window.
                        :WinBar {:fg c.fg1 :bg :NONE}
                        ;; Window bar of not-current windows.
                        :WinBarNC {:fg c.fg1 :bg :NONE}}
               :lsp {;; ┌──────────────────────┐
                     ;; │ Lsp highlight groups │
                     ;; └──────────────────────┘
                     ;; Used for highlighting "text" references
                     :LspReferenceText {:fg c.bg0 :bg c.darkYellow}
                     ;; Used for highlighting "read" references
                     :LspReferenceRead {:link :LspReferenceText}
                     ;; Used for highlighting "write" references
                     :LspReferenceWrite {:fg c.bg0
                                         :bg c.darkYellow
                                         :underline true}
                     ;; Used to color the virtual text of the codelens.
                     :LspCodeLens {:fg c.grey1}
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
                     }
               :syntax {;; ┌─────────────────────────┐
                        ;; │ Syntax highlight groups │
                        ;; └─────────────────────────┘
                        ;; ** Any comment. **
                        :Comment {:fg c.grey1 :italic true}
                        ;; ** Any constant. **
                        :Constant {:fg c.cyan}
                        ;; A string constant: "this is a string".
                        :String {:fg c.green}
                        ;; A character constant: 'c', '\n'.
                        :Character {:link :String}
                        ;; A number constant: 234, 0xff.
                        :Number {:fg c.purple}
                        ;; A boolean constant: TRUE, false.
                        :Boolean {:fg c.purple}
                        ;; A floating point constant: 2.3e10.
                        :Float {:link :Number}
                        ;; ** Any variable name. **
                        :Identifier {:fg c.blue}
                        ;; Function name (also: methods for classes).
                        :Function {:fg c.green}
                        ;; ** Any statement. **
                        :Statement {:fg c.red :italic true}
                        ;; "if", "then", "else", "endif", "switch", etc.
                        :Conditional {:fg c.red}
                        ;; "for", "do", "while", etc.
                        :Repeat {:fg c.red}
                        ;; "case", "default", etc.
                        :Label {:fg c.orange}
                        ;; "sizeof", "+", "*", etc.
                        :Operator {:fg c.orange}
                        ;; Any other keyword
                        :Keyword {:fg c.red}
                        ;; "try", "catch", "throw".
                        :Exception {:fg c.red}
                        ;; ** Generic Preprocessor. **
                        :PreProc {:fg c.purple}
                        ;; Preprocessor #include.
                        ; Include
                        ;; Preprocessor #define.
                        ; Define
                        ;; Same as Define.
                        :Macro {:fg c.cyan}
                        ;; preprocessor #if, #else, #endif, etc.
                        ; PreCondit
                        ;; ** int, long, char, etc. **
                        :Type {:fg c.yellow}
                        ;; static, register, volatile, etc.
                        :StorageClass {:fg c.orange}
                        ;; struct, union, enum, etc.
                        :Structure {:fg c.orange}
                        ; ;; A typedef.
                        ; :Typedef {:link :Type}
                        ;; ** Any special symbol. **
                        :Special {:fg c.yellow}
                        ; ;; Special character in a constant.
                        ; :SpecialChar {:link :Special}
                        ;; You can use CTRL-] on this.
                        :Tag {:fg c.orange}
                        ;; Character that needs attention.
                        :Delimiter {:fg c.fg0}
                        ;; Special things inside a comment.
                        :SpecialComment {:fg c.grey1 :italic true}
                        ;; Debugging statements.
                        :Debug {:fg c.orange}
                        ;; ** Test that stands out, HTML links. **
                        :Underlined {:underline true}
                        ;; ** Left blank, hidden. **
                        :Ignore {:fg c.grey1}
                        ;; ** Any erroneous construct. **
                        :Error {:fg c.red}
                        ;; ** Anything that needs extra attention; mostly the keywords TODO FIXME WARNING and XXX. **
                        :Todo {:fg c.purple :italic true}}
               :diagnostics {;; Other Diagnostic highlights link to this by default (except Underline)
                             :DiagnosticError {:fg c.darkRed}
                             :DiagnosticWarn {:fg c.darkYellow}
                             :DiagnosticInfo {:fg c.darkBlue}
                             :DiagnosticHint {:fg c.darkCyan}
                             :DiagnosticOk {:fg c.darkGreen}
                             ; :DiagnosticVirtualTextError {}
                             ; :DiagnosticVirtualTextWarn {}
                             ; :DiagnosticVirtualTextInfo {}
                             ; :DiagnosticVirtualTextHint {}
                             ; :DiagnosticVirtualTextOk {}
                             :DiagnosticUnderlineError {:fg c.darkRed
                                                        :undercurl true}
                             :DiagnosticUnderlineWarn {:fg c.darkYellow
                                                       :undercurl true}
                             :DiagnosticUnderlineInfo {:fg c.darkBlue
                                                       :undercurl true}
                             :DiagnosticUnderlineHint {:fg c.darkCyan
                                                       :undercurl true}
                             :DiagnosticUnderlineOk {:fg c.darkGreen
                                                     :undercurl true}
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
                             }}
      term [;; black
            c.bg0
            ;; red
            c.red
            ;; green
            c.green
            ;; yellow
            c.yellow
            ;; blue
            c.blue
            ;; magenta
            c.magenta
            ;; cyan
            c.cyan
            ;; white
            c.fg1
            ;; bright black
            c.grey3
            ;; bright red
            c.lightRed
            ;; bright green
            c.lightGreen
            ;; bright green
            c.lightYellow
            ;; bright green
            c.lightBlue
            ;; bright magenta
            c.lightMagenta
            ;; bright magenta
            c.lightCyan
            ;; bright white
            c.fg0]
      default_config {:plugins []}
      ctx {:cfg vim.g.morimo :colors c}]
  ;; merge configurations (first time only)
  (set vim.g.morimo
       (vim.tbl_deep_extend :force default_config (or vim.g.morimo {})))
  {;; initialize colorscheme (usually called by :colorscheme command)
   :init (fn []
           ;; cleanup
           (lua "if vim.g.colors_name then vim.cmd('hi clear') end")
           (set vim.g.colors_name :morimo)
           (set vim.o.termguicolors true)
           ;; apply builtin highlights
           (each [_ hs (pairs builtin)]
             (apply hs))
           ;; apply plugins highlights
           (each [_ p (ipairs vim.g.morimo.plugins)]
             (loadPlugin ctx p))
           ;; apply terminal highlights
           (each [i c (ipairs term)]
             (tset vim.g (.. :terminal_color_ (- i 1)) c)))
   ;; load plugin highlights manually
   :load (fn [name] (loadPlugin ctx name))})
