(fn [ctx]
  (let [{:color c} ctx]
    {;; ┌──────────────────────────┐
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
     :CursorLine {:bg c.bg1}
     ;; Directory names.
     :Directory {:fg c.green}
     ;; Diff mode: Added line.
     :DiffAdd {:bg c.bg_green}
     ;; Diff mode: Changed line.
     :DiffChange {:bg c.bg_blue}
     ;; Diff mode: Deleted line.
     :DiffDelete {:bg c.bg_red}
     ;; Diff mode: Changed text within a changed line.
     :DiffText {:fg c.bg0 :bg c.fg}
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
     :SignColumn {:fg c.fg}
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
     :CursorLineNr {:fg c.fg :bold true}
     ;; Like FoldColumn when cursorline is set for the cursor line.
     ; :CursorLineFold
     ;; Like SignColumn when cursorline is set for the cursor line.
     ; :CursorLineSign
     ;; Character under the cursor or just before it, if it is a paired bracket, and its match.
     :MatchParen {:bg c.bg2 :bold true}
     ;; showmode message.
     :ModeMsg {:fg c.fg :bold true}
     ;; Area for messages and cmdline.
     :MsgArea {:link :StatusLine}
     ;; Separator for scrolled messages msgsep.
     :MsgSeparator {:bg c.bg2}
     ;; more-prompt.
     :MoreMsg {:fg c.yellow :bold true}
     ;; @ at the end of the window, characters from showbreak and other characters that do not really exist in the text.
     :NonText {:fg c.bg2}
     ;; Normal text.
     :Normal {:fg c.fg :bg c.bg0}
     ;; Normal text in floating windows.
     :NormalFloat {:fg c.fg :bg c.bg1}
     ;; Border of floating windows.
     ; :FloatBorder {}
     ;; Title of floating windows.
     :FloatTitle {:fg :lightBlue :bold true}
     ;; Footer of floating windows
     :FloatFooter {:fg c.bg2}
     ;; Normal text in non-current windows.
     :NormalNC {:link :Normal}
     ;; Popup menu: Normal item.
     :Pmenu {:fg c.fg :bg c.bg1}
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
     :SpecialKey {:fg c.fg_dim}
     ;; Word that is not recognized by the spellchecker.
     :SpellBad {:fg c.red :undercurl true :sp c.red}
     ;; Word that should start with a capital.
     :SpellCap {:fg c.blue :undercurl true :sp c.blue}
     ;; SpellLocal	Word that is recognized by the spellchecker as one that is used in another region.
     :SpellLocal {:fg c.aqua :undercurl true :sp c.aqua}
     ;; SpellRare	Word that is recognized by the spellchecker as one that is hardly ever used.
     :SpellRare {:fg c.purple :undercurl true :sp c.purple}
     ;; Status line of current window.
     :StatusLine {:fg c.grey1 :bg c.bg1}
     ;; Status lines of not-current windows.
     :StatusLineNC {:fg c.grey1 :bg c.bg0}
     ;; Tab pages line, not active tab page label.
     :TabLine {:fg c.grey2 :bg c.bg3}
     ;; Tab pages line, where there are no labels.
     :TabLineFill {:fg c.grey1 :bg c.bg1}
     ;; Tab pages line, active tab page label.
     :TabLineSel {:fg c.bg0 :bg c.green}
     ;; Titles for output from :set all, :autocmd etc.
     :Title {:fg c.orange :bold true}
     ;; Visual mode selection.
     :Visual {:bg c.bg_visual}
     ;; Visual mode selection when vim is Not Owning the Selection.
     :VisualNOS {:bg c.bg_visual}
     ;; Warning messages.
     :WarningMsg {:fg c.yellow :bold true}
     ;; Whitespace	nbsp, space, tab, multispace, lead and trail.
     :Whitespace {:fg c.bg3}
     ;; Current match in wildmenu completion.
     :WildMenu {:link :PmenuSel}
     ;; Window bar of current window.
     :WinBar {:fg c.fg_dim :bg :NONE}
     ;; Window bar of not-current windows.
     :WinBarNC {:fg c.fg_dim :bg :NONE}}))
