(fn [ctx]
  (let [{:color c} ctx]
    {:GitSignsAdd {:fg c.lightGreen}
     :GitSignsChange {:fg c.lightBlue}
     :GitSignsDelete {:fg c.lightRed}}))
