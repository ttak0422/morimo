(fn [ctx]
  (let [{:colors c} ctx]
    {;; ┌─────────────────────────┐
     ;; │ Syntax highlight groups │
     ;; └─────────────────────────┘
     ;; ** Any comment. **
     :Comment {:fg c.grey1 :italic true}
     ;; ** Any constant. **
     :Constant {:fg c.aqua}
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
     :Macro {:fg c.aqua}
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
     :Delimiter {:fg c.fg}
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
     :Todo {:fg c.purple :italic true}}))
