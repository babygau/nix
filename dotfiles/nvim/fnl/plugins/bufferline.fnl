(module plugins.bufferline
  {autoload {{: setup} bufferline}})

(setup {:options {:buffer_close_icon :x
                  :modified_icon "+"
                  :show_close_icon false
                  :show_buffer_icons false
                  :show_buffer_close_icons false
                  :show_tab_indicators true
                  :always_show_bufferline true}})
