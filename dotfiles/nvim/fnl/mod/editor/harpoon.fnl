(import-macros {: nmap : noremap : lazyreq : lazyfunc} :core.macros)

(local harpoon (lazyreq :harpoon))
(local {: add_file : rm_file : clear_all} (lazyfunc :harpoon.mark))
(local {:toggle_quick_menu ui_menu : nav_file : nav_next : nav_prev}
       (lazyfunc :harpoon.ui))

(local {:toggle_quick_menu term_menu} (lazyfunc :harpoon.cmd-ui))
(local {: sendCommand} (lazyfunc :harpoon.tmux))
(local fmt string.format)

(fn setup []
  (harpoon.setup {:global_settings {:enter_on_sendcmd true}
                  :menu {:borderchars store.border_alt}
                  ;; NOTE: `Harpoon` will throw error if no command at menu index
                  ;; use `echo 'Hello Harpoon'` as a placeholder to keep me from
                  ;; send empty command by accident
                  :projects {:$HOME/nix {:mark {:marks [{:filename :dotfiles/nvim/TODO.norg}
                                                        {:filename :dotfiles/nvim/fnl/core/macros.fnl}
                                                        {:filename :dotfiles/nvim/fnl/mod/init.fnl}
                                                        {:filename :dotfiles/nvim/fnl/mod/editor/harpoon.fnl}
                                                        {:filename :dotfiles/nvim/fnl/mod/lsp/lsp.fnl}
                                                        {:filename :dotfiles/nvim/fnl/mod/completion/nvim-cmp.fnl}
                                                        {:filename :dotfiles/karabiner/karabiner.edn}
                                                        {:filename :dotfiles/.zshrc}]}
                                         :term {:cmds ["cd $HOME/nix/dotfiles/wezterm && just compile && cd $HOME/nix"
                                                       "cd $HOME/nix/dotfiles/wezterm && just themer && cd $HOME/nix"
                                                       "$HOME/nix/dotfiles/nvim/setup.sh"
                                                       "brew reinstall neovim"
                                                       "brew upgrade --cask wezterm-nightly --no-quarantine --greedy-latest"
                                                       :goku
                                                       "echo 'Hello Harpoon!'"
                                                       "echo 'Hello Harpoon!'"
                                                       "echo 'Hello Harpoon!'"]}}
                             :$HOME/workspace/son-of-harpoon.git/main {:mark {:marks [{:filename :days-of-harpoon.norg}]}
                                                                       :term {:cmds ["echo 'Hello Harpoon!'"
                                                                                     "echo 'Hello Harpoon!'"
                                                                                     "echo 'Hello Harpoon!'"
                                                                                     "echo 'Hello Harpoon!'"
                                                                                     "echo 'Hello Harpoon!'"
                                                                                     "echo 'Hello Harpoon!'"
                                                                                     "echo 'Hello Harpoon!'"
                                                                                     "echo 'Hello Harpoon!'"
                                                                                     "echo 'Hello Harpoon!'"]}}
                             :$HOME/workspace/rustlings {:mark {:marks []}
                                                         :term {:cmds ["cd $HOME/workspace/rustlings && rustlings watch"
                                                                       "rustup docs --book"
                                                                       "echo 'Hello Harpoon!'"
                                                                       "echo 'Hello Harpoon!'"
                                                                       "echo 'Hello Harpoon!'"
                                                                       "echo 'Hello Harpoon!'"
                                                                       "echo 'Hello Harpoon!'"
                                                                       "echo 'Hello Harpoon!'"
                                                                       "echo 'Hello Harpoon!'"]}}
                             :$HOME/workspace/gtd {:mark {:marks [{:filename :index.norg}
                                                                  {:filename :inbox.norg}]}
                                                   :term {:cmds ["echo 'Hello Harpoon!'"
                                                                 "echo 'Hello Harpoon!'"
                                                                 "echo 'Hello Harpoon!'"
                                                                 "echo 'Hello Harpoon!'"
                                                                 "echo 'Hello Harpoon!'"
                                                                 "echo 'Hello Harpoon!'"
                                                                 "echo 'Hello Harpoon!'"
                                                                 "echo 'Hello Harpoon!'"]}}
                             :$HOME/workspace/notetoself {:mark {:marks [{:filename :inbox.norg}
                                                                         {:filename :learn-you-some/neovim/neovim.norg}
                                                                         {:filename :learn-you-some/git/git.norg}]}
                                                          :term {:cmds ["echo 'Hello Harpoon!'"
                                                                        "echo 'Hello Harpoon!'"
                                                                        "echo 'Hello Harpoon!'"
                                                                        "echo 'Hello Harpoon!'"
                                                                        "echo 'Hello Harpoon!'"
                                                                        "echo 'Hello Harpoon!'"
                                                                        "echo 'Hello Harpoon!'"
                                                                        "echo 'Hello Harpoon!'"
                                                                        "echo 'Hello Harpoon!'"]}}}})

  (noremap n silent :<Leader>mf add_file)
  (noremap n silent :<Leader>md rm_file)
  (noremap n silent :<Leader>mD clear_all)
  (noremap n silent :<Leader>mm ui_menu)
  (noremap n silent :<Leader>mn nav_next)
  (noremap n silent :<Leader>mp nav_prev)
  (noremap n silent :<LocalLeader>m term_menu)

  (for [v 1 9]
    (noremap n silent (fmt "<Leader>%s" v) `(nav_file v))
    ;; Send command to specific Tmux pane position with its ID or Token:
    ;; See: https://man7.org/linux/man-pages/man1/tmux.1.html#COMMANDS
    (noremap n silent (fmt "<LocalLeader>%s" v) `(sendCommand "{down-of}" v))))

{: setup}
