(let [color (require :morimo.color)
      default_config {:plugins []} ;;
      ;; get context
      ctx (fn []
            {:cfg vim.g.morimo : color}) ;;
      ;; apply highlights
      apply (fn [highlights]
              (each [hl spec (pairs highlights)]
                (vim.api.nvim_set_hl 0 hl spec)))]
  ;; merge configurations (first time only)
  (set vim.g.morimo
       (vim.tbl_deep_extend :force default_config (or vim.g.morimo {})))
  {;; initialize colorscheme (usually called by :colorscheme command)
   :init (fn []
           (let [plugins (icollect [_ p (ipairs vim.g.morimo.plugins)]
                           (require (.. :morimo.plugins. p)))]
             ;; cleanup
             (when vim.g.colors_name
               (vim.cmd "hi clear"))
             (set vim.g.colors_name :e)
             (set vim.o.termguicolors true)
             ;; generate and apply highlights
             (each [_ f (ipairs [(require :morimo.builtin.editor)
                                 (require :morimo.builtin.syntax)
                                 (unpack plugins)])]
               (apply (f (ctx))))))
   ;; load plugin highlights manually
   :load (fn [name]
           (apply ((require (.. :morimo.plugins. name)) (ctx))))})