(local c (require :morimo.colors))
{;; Highlight group for unmatched characters of each completion field.
 :CmpItemAbbr {:link :Pmenu}
 ;; Highlight group for unmatched characters of each deprecated completion field.
 :CmpItemAbbrDeprecated {:fg c.grey1 :strikethrough true}
 ;; Highlight group for matched characters of each completion field.
 :CmpItemAbbrMatch {:fg c.fg0 :bold true}
 ;; Highlight group for fuzzy-matched characters of each completion field.
 :CmpItemAbbrMatchFuzzy {:link :CmpItemAbbr}
 ; ;; Highlight group for the kind of the field.
 ; :CmpItemKind {}
 ;; CmpItemKind%KIND_NAME%: Highlight group for the kind of the field for a specific `lsp.CompletionItemKind`.
 ;; ```lua
 ;; lsp.CompletionItemKind = {
 ;;   Text = 1,
 ;;   Method = 2,
 ;;   Function = 3,
 ;;   Constructor = 4,
 ;;   Field = 5,
 ;;   Variable = 6,
 ;;   Class = 7,
 ;;   Interface = 8,
 ;;   Module = 9,
 ;;   Property = 10,
 ;;   Unit = 11,
 ;;   Value = 12,
 ;;   Enum = 13,
 ;;   Keyword = 14,
 ;;   Snippet = 15,
 ;;   Color = 16,
 ;;   File = 17,
 ;;   Reference = 18,
 ;;   Folder = 19,
 ;;   EnumMember = 20,
 ;;   Constant = 21,
 ;;   Struct = 22,
 ;;   Event = 23,
 ;;   Operator = 24,
 ;;   TypeParameter = 25,
 ;; }
 ;; ```
 ; :CmpItemKindText {}
 ; :CmpItemKindMethod {}
 ; :CmpItemKindFunction {}
 ; :CmpItemKindConstructor {}
 ; :CmpItemKindField {}
 ; :CmpItemKindVariable {}
 ; :CmpItemKindClass {}
 ; :CmpItemKindInterface {}
 ; :CmpItemKindModule {}
 ; :CmpItemKindProperty {}
 ; :CmpItemKindUnit {}
 ; :CmpItemKindValue {}
 ; :CmpItemKindEnum {}
 ; :CmpItemKindKeyword {}
 ; :CmpItemKindSnippet {}
 ; :CmpItemKindColor {}
 ; :CmpItemKindFile {}
 ; :CmpItemKindReference {}
 ; :CmpItemKindFolder {}
 ; :CmpItemKindEnumMember {}
 ; :CmpItemKindConstant {}
 ; :CmpItemKindStruct {}
 ; :CmpItemKindEvent {}
 ; :CmpItemKindOperator {}
 ; :CmpItemKindTypeParameter {}
 ;; The menu field's highlight group.
 :CmpItemMenu {:link :Pmenu}}
