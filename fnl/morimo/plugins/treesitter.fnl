(local c (require :morimo.colors))
;; see https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#parser-configurations
{;; ┌─────────────┐
 ;; │ Identifiers │
 ;; └─────────────┘
 ;; various variable names
 "@variable" {:fg c.fg0}
 ;; built-in variable names (e.g. `this`)
 "@variable.builtin" {:fg c.purple :italic true}
 ;; parameters of a function
 "@variable.parameter" {:fg c.lightMagenta}
 ; ;; special parameters (e.g. `_`, `it`)
 ; "@variable.parameter.builtin" {}
 ; ;; object and struct fields
 ; "@variable.member" {}
 ; ;; constant identifiers
 ; "@constant" {:link :Constant}
 ; ;; built-in constant values
 ; "@constant.builtin" {:link :Special}
 ; ;; constants defined by the preprocessor
 ; "@constant.macro" {:link :Define}
 ;; modules or namespaces
 ; "@module" {}
 ; ;; built-in modules or namespaces
 ; "@module.builtin" {}
 ; ;; GOTO and other labels (e.g. `label:` in C), including heredoc labels
 ; "@label" {:link :Label}
 ;; ┌──────────┐
 ;; │ Literals │
 ;; └──────────┘
 ; ;; string literals
 ; "@string" {}
 ; ;; string documenting code (e.g. Python docstrings)
 ; "@string.documentation" {}
 ;; regular expressions
 "@string.regexp" {:fg c.brown}
 ;; escape sequences
 "@string.escape" {:fg c.brown :bold true}
 ; ;; other special strings (e.g. dates)
 ; "@string.special" {}
 ;; symbols or atoms
 "@string.special.symbol" {:fg c.blue}
 ;; URIs (e.g. hyperlinks)
 "@string.special.url" {:fg c.yellow :undercurl true}
 ; ;; filenames
 ; "@string.special.path" {}
 ; ;; character literals
 ; "@character" {}
 ; ;; special characters (e.g. wildcards)
 ; "@character.special" {}
 ; ;; boolean literals
 ; "@boolean" {}
 ; ;; numeric literals
 ; "@number" {}
 ; ;; floating-point number literals
 ; "@number.float" {}
 ;; ┌───────┐
 ;; │ Types │
 ;; └───────┘
 ; ;; type or class definitions and annotations
 ; "@type" {}
 ; ;; built-in types
 ; "@type.builtin" {}
 ; ;; identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
 ; "@type.definition" {}
 ;; attribute annotations (e.g. Python decorators, Rust lifetimes)
 "@attribute" {:link :Constant}
 ; ;; builtin annotations (e.g. `@property` in Python)
 ; "@attribute.builtin" {}
 ; ;; the key in key/value pairs
 ; "@property" {}
 ;; ┌───────────┐
 ;; │ Functions │
 ;; └───────────┘
 ; ;; function definitions
 ; "@function" {}
 ; ;; built-in functions
 ; "@function.builtin" {}
 ; ;; function calls
 ; "@function.call" {}
 ; ;; preprocessor macros
 ; "@function.macro" {}
 ; ;; method definitions
 ; "@function.method" {}
 ; ;; method calls
 ; "@function.method.call" {}
 ;; constructor calls and definitions
 "@constructor" {:fg c.yellow}
 ;; symbolic operators (e.g. `+` / `*`)
 "@operator" {:link :Operator}
 ;; ┌──────────┐
 ;; │ Keywords │
 ;; └──────────┘
 ; ;; keywords not fitting into specific categories
 ; "@keyword" {}
 ; ;; keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
 ; "@keyword.coroutine" {}
 ; ;; keywords that define a function (e.g. `func` in Go, `def` in Python)
 ; "@keyword.function" {}
 ;; operators that are English words (e.g. `and` / `or`)
 "@keyword.operator" {:fg c.orange :bold true}
 ;; keywords for including or exporting modules (e.g. `import` / `from` in Python)
 "@keyword.import" {:link :PreProc}
 ; ;; keywords describing namespaces and composite types (e.g. `struct`, `enum`)
 ; "@keyword.type" {}
 ; ;; keywords modifying other constructs (e.g. `const`, `static`, `public`)
 ; "@keyword.modifier" {}
 ; ;; keywords related to loops (e.g. `for` / `while`)
 ; "@keyword.repeat" {}
 ; ;; keywords like `return` and `yield`
 ; "@keyword.return" {}
 ; ;; keywords related to debugging
 ; "@keyword.debug" {}
 ; ;; keywords related to exceptions (e.g. `throw` / `catch`)
 ; "@keyword.exception" {}
 ; ;; keywords related to conditionals (e.g. `if` / `else`)
 ; "@keyword.conditional" {}
 ; ;; ternary operator (e.g. `?` / `:`)
 ; "@keyword.conditional.ternary" {}
 ; ;; various preprocessor directives & shebangs
 ; "@keyword.directive" {}
 ; ;; preprocessor definition directives
 ; "@keyword.directive.define" {}
 ;; ┌─────────────┐
 ;; │ Punctuation │
 ;; └─────────────┘
 ;; delimiters (e.g. `;` / `.` / `,`)
 "@punctuation.delimiter" {:fg c.lightMagenta}
 ;; brackets (e.g. `()` / `TODO` / `[]`)
 "@punctuation.bracket" {:fg c.lightMagenta}
 ;; special symbols (e.g. `TODO` in string interpolation)
 "@punctuation.special" {:fg c.lightMagenta}
 ;; ┌──────────┐
 ;; │ Comments │
 ;; └──────────┘
 ; ;; line and block comments
 ; "@comment" {}
 ; ;; comments documenting code
 ; "@comment.documentation" {}
 ;; error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
 "@comment.error" {:fg c.fg0 :bg c.darkRed :bold true}
 ;; warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
 "@comment.warning" {:fg c.bg0 :bg c.yellow :bold true}
 ; ;; todo-type comments (e.g. `TODO`, `WIP`)
 ; "@comment.todo" {}
 "@comment.note" {:fg c.bg0 :bg c.lightBlue :bold true}}
