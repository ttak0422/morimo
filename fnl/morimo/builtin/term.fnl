(fn [ctx]
  (let [{:colors c} ctx
        cs [;; black
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
            c.fg0]]
    (each [i c (ipairs cs)]
      (tset vim.g (.. :terminal_color_ (- i 1)) c))))
