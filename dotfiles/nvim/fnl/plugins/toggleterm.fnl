(module plugins.toggleterm
  {autoload {{: setup} toggleterm}})

(setup {:size 20
        :hide_numbers true
        :open_mapping :<C-t>
        :shade_filetypes {}
        :shade_terminals false
        :shading_factor 0.3
        :start_in_insert true
        :persist_size true
        :direction :horizontal})
