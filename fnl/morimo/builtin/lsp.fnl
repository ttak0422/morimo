(fn [ctx]
  (let [{:color c} ctx]
    {;; ┌──────────────────────┐
     ;; │ Lsp highlight groups │
     ;; └──────────────────────┘
     ;; Used for highlighting "text" references
     :LspReferenceText {:fg c.bg0 :bg c.darkYellow}
     ;; Used for highlighting "read" references
     :LspReferenceRead {:link :LspReferenceText}
     ;; Used for highlighting "write" references
     :LspReferenceWrite {:fg c.bg0 :bg c.darkYellow :underline true}
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
     }))
