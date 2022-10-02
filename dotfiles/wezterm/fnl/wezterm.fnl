(local {: font_with_fallback : font : home_dir : target_triple}
       (require :wezterm))

(local {: colors : window_frame} (require :themer.rose-pine-moon))

(fn is_macos? []
  (= target_triple :x86_64-apple-darwin))

;; fnlfmt: skip
(fn fallback [name]
  (font_with_fallback [name
                       :neorg
                       "Symbols Nerd Font 1000-em"
                       ]))

{:term :wezterm
 :default_prog (if (is_macos?)
                   [:/usr/local/bin/fish :-l :-c "tmux attach -d || tmux"]
                   [:wsl.exe :zsh :-l :-c "tmux attach -d || tmux"])
 :default_cwd home_dir
 :colors (colors)
 :window_frame (window_frame)
 :window_background_opacity 0.85
 :font_dirs [:/Users/bangedorrunt/Library/Fonts]
 :font (fallback "Victor Mono")
 :font_size 21
 :freetype_load_target :Light
 ;; :line_height 1.4
 ;; :cell_width 0.85
 :underline_position :-0.15cell
 :window_decorations :RESIZE
 :enable_tab_bar true
 :hide_tab_bar_if_only_one_tab true
 :enable_scroll_bar false
 :exit_behavior :Close
 :window_close_confirmation :NeverPrompt
 :window_padding {:left :1cell :right :1cell :top :0.5cell :bottom :0.5cell}
 :enable_csi_u_key_encoding true
 :adjust_window_size_when_changing_font_size false
 :check_for_updates false}
