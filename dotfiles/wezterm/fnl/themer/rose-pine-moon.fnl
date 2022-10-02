(local palette {:base "#191724"
                :overlay "#26233a"
                :muted "#6e6a86"
                :text "#f8f8f2"
                :love "#ff5555"
                :gold "#f1fa8c"
                :rose "#ff79c6"
                :pine "#50fa7b"
                :foam "#8be9fd"
                :iris "#bd93f9"
                :highlight_high "#524f67"})

(local active-tab {:bg_color palette.overlay :fg_color palette.text})

(local inactive-tab {:bg_color palette.base :fg_color palette.muted})

(fn colors []
  {:foreground palette.text
   :background palette.base
   :cursor_bg palette.pine
   :cursor_border palette.pine
   :cursor_fg palette.text
   :selection_bg "#2a283e"
   :selection_fg palette.text
   :ansi [palette.overlay
          palette.love
          palette.pine
          palette.gold
          palette.foam
          palette.iris
          palette.rose
          palette.text]
   :brights [palette.muted
             palette.love
             palette.pine
             palette.gold
             palette.foam
             palette.iris
             palette.rose
             palette.text]
   :tab_bar {:background palette.base
             :active_tab active-tab
             :inactive_tab inactive-tab
             :inactive_tab_hover active-tab
             :new_tab inactive-tab
             :new_tab_hover active-tab
             :inactive_tab_edge palette.muted}})

(fn window_frame []
  {:active_titlebar_bg palette.base :inactive_titlebar_bg palette.base})

{: colors : window_frame}
