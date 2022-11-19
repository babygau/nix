(import-macros {: use} :core.macros)

(fn setup []
  (use ii14/autosplit.nvim :event "User PackerDefered")
  (use tpope/vim-eunuch :event "User PackerDefered")
  (use tpope/vim-repeat :event "User PackerDefered")
  (use linty-org/readline.nvim :event "User PackerDefered" :init+ :editor.readline)
  ;; (use "$HOME/workspace/son-of-harpoon.git/main" :as :harpoon :init+ :editor.harpoon)
  (use echasnovski/mini.comment :after :treesitter :init+ :editor.comment)
  (use echasnovski/mini.ai :event "User PackerDefered" :init :mini.ai)
  (use echasnovski/mini.surround :event "User PackerDefered" :init :mini.surround)
  (use echasnovski/mini.pairs :event "User PackerDefered" :init :mini.pairs)
  (use echasnovski/mini.bufremove :event "User PackerDefered" :init :mini.bufremove)
  (use echasnovski/mini.align :event "User PackerDefered" :init :mini.align)
  (use NvChad/nvim-colorizer.lua :event :BufReadPre :init :colorizer)
  (use nvim-telescope/telescope-fzf-native.nvim :module :telescope._extensions.fzf :run "make")
  (use nvim-telescope/telescope-live-grep-args.nvim :module :telescope._extensions.live_grep_args)
  (use nvim-telescope/telescope.nvim :event "User PackerDefered" :init+ :editor.telescope))

{: setup}
