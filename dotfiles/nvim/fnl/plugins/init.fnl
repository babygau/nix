(module plugins.init
  {autoload {{: use} core.packer}})

;; fnlfmt: skip
;; NOTE: lua use % as escape in pattern
(use
  ;;;; Dependencies
  :lewis6991/impatient.nvim {}
  :wbthomason/packer.nvim {:opt true}
  :Olical/aniseed {:branch :develop}
  :antoinemadec/FixCursorHold.nvim {}
  :nvim-lua/plenary.nvim {:as :plenary :module_pattern "plenary.*"}
  :kyazdani42/nvim-web-devicons {:module_pattern "nvim.web.devicons" :mod :devicons}

  ;;;; UI plugins
  :rose-pine/neovim {:color :rosepine}
  :lukas-reineke/indent-blankline.nvim {:after :colorscheme :mod :indent-blankline}
  :akinsho/bufferline.nvim {:after :colorscheme :mod :bufferline}
  :nvim-lualine/lualine.nvim {:after :colorscheme :mod :lualine}
  :folke/which-key.nvim {:event :BufRead :mod :which-key}
  :folke/todo-comments.nvim {:event :BufRead :init :todo-comments}
  :kyazdani42/nvim-tree.lua {:event :BufRead :mod :nvim-tree}
  ;;;; Editor plugins
  :tpope/vim-eunuch {:event :BufWinEnter}
  :tpope/vim-abolish {:event :BufWinEnter}
  :tpope/vim-repeat {:event :BufWinEnter}
  :tpope/vim-commentary {:event :BufRead}
  :tpope/vim-surround {:event :BufRead}
  :tpope/vim-sleuth {:event :BufRead}
  :ggandor/leap.nvim {:event :BufRead :mod :leap}
  :akinsho/toggleterm.nvim {:event :BufRead :mod :toggleterm}
  :rktjmp/highlight-current-n.nvim {:event :BufRead :mod :highlight-current-n}
  :junegunn/vim-easy-align {:event :BufRead :mod :vim-easy-align}
  :xiyaowong/accelerated-jk.nvim {:event :BufRead :init :accelerated-jk}
  :romainl/vim-qf {:ft :qf}
  :ahmedkhalf/project.nvim {:as :rooter :module_pattern "project.*" :init :project_nvim}
  :NvChad/nvim-colorizer.lua {:ft [:html :css
                                   :sass :vim
                                   :typescript :typescriptreact]}
  ;;;; Fuzzy search engine
  :ThePrimeagen/harpoon {:event :BufRead :mod :harpoon}
  :nvim-telescope/telescope-fzf-native.nvim {:as :fzf-native :module_pattern "fzf.*" :run "make"}
  :nvim-telescope/telescope.nvim {:as :telescope
                                  :module_pattern "telescope.*"
                                  :branch "0.1.x"
                                  :event :BufRead
                                  :cmd :Telescope
                                  :mod :telescope}
  ;;;; Git plugins
  :tpope/vim-fugitive {:event :BufRead :mod :vim-fugitive}
  :tpope/vim-rhubarb {:after :vim-fugitive :cmd :GBrowse}
  :sindrets/diffview.nvim {:event :BufRead :mod :diffview}
  :lewis6991/gitsigns.nvim {:after :colorscheme :mod :gitsigns}
  ;;;; Lang plugins
  :folke/trouble.nvim {:cmd :Trouble}
  :jose-elias-alvarez/null-ls.nvim {:module_pattern "null.ls.*"}
  :onsails/lspkind-nvim {:module_pattern "lspkind"}
  :simrat39/rust-tools.nvim {}
  :neovim/nvim-lspconfig {:as :lspconfig :module_pattern "lspconfig.*"}
  :williamboman/mason.nvim {:as :mason :module_pattern "mason"}
  :williamboman/mason-lspconfig.nvim {:event :BufReadPre :mod :lsp}
  :nvim-treesitter/nvim-treesitter {:event :BufRead
                                    :as :treesitter
                                    :mod :nvim-treesitter}
  :mfussenegger/nvim-dap {:ft [:rust :typescript :typescriptreact]}
  :p00f/nvim-ts-rainbow {:after :treesitter}
  :andymass/vim-matchup {:after :treesitter}
  :JoosepAlviste/nvim-ts-context-commentstring {:after [:vim-commentary :treesitter]}
  :nvim-neorg/neorg-telescope {:module_pattern "neorg.modules.*"}
  :nvim-neorg/neorg {:after [:treesitter :telescope] :mod :neorg :ft [:norg]}
  :babygau/aniseed-playground {:cmd :AniseedPlayground}
  :Olical/conjure {:branch :develop :mod :conjure :ft [:clojure :fennel :hy]}
  ;;;; Completion plugins
  :L3MON4D3/LuaSnip {:module_pattern "luasnip.*"}
  :hrsh7th/nvim-cmp {:commit "706371f1300e7c0acb98b346f80dad2dd9b5f679"
                     :event :BufRead
                     :module_pattern "cmp.*"
                     :mod :nvim-cmp}
  :hrsh7th/cmp-cmdline {:after :nvim-cmp}
  :hrsh7th/cmp-path {:after :nvim-cmp}
  :hrsh7th/cmp-buffer {:after :nvim-cmp}
  :hrsh7th/cmp-calc {:after :nvim-cmp}
  :hrsh7th/cmp-nvim-lsp {:after :nvim-cmp}
  :hrsh7th/cmp-nvim-lua {:after :nvim-cmp}
  :PaterJason/cmp-conjure {:after [:nvim-cmp :conjure]}
  :saadparwaiz1/cmp_luasnip {:after :nvim-cmp}
  ;;;; Tool plugins
  :gpanders/editorconfig.nvim {:ft [:go :c :cpp :rust :typescript :javascript :vim :zig]}
  ;;;; Unused plugins
  ;; :github/copilot.vim {}
  ;; :tzachar/cmp-tabnine {:mod :cmp-tabnine :after :nvim-cmp}
  ;; :mg979/vim-visual-multi {:event :BufRead}
  )
(module rc.icon
  {autoload {core aniseed.core}})

(def tab
  {:vim-classic " "
   :vim " "
   :clojure " "
   :clojure-alt ""
   :lua " "
   :python ""
   :large-m " "
   :lock ""
   :code-braces " "
   :code-brackets " "
   :code-parentheses " "
   :code-tags " "
   :plus " "
   :plus-circle " "
   :plus-square " "
   :minus " "
   :minus-circle " "
   :minus-square " "
   :plus-minus " "
   :slash ""
   :branch ""
   :compare " "
   :merge ""
   :pullreq ""
   :ln ""
   :cn ""
   :meteor " "
   :zap ""
   :lightning " "
   :tree " "
   :tree-alt " "
   :info ""
   :info-circle " "
   :leaf " "
   :fire " "
   :heart " "
   :heart-o " "
   :sparkles " "
   :ban " "
   :circle "●"
   :asterisk " "
   :exclam ""
   :exclam-circle " "
   :exclam-circle-alt "𥉉"
   :exclam-tri " "
   :exclam-tri-alt " "
   :exclam-box " "
   :exclam-octagon " "
   :exclam-octagram "ﱥ"
   :exclam-comment " "
   :exclam-comment-alt " "
   :times ""
   :close ""
   :close-box " "
   :close-box-alt " "
   :close-octagon " "
   :close-octagon-alt " "
   :bug " "
   :check " "
   :check-thin " "
   :check-circle " "
   :check-square " "
   :pencil " "
   :pencil-square " "
   :text ""
   :text-alt ""
   :format-title "﫳"
   :document " "
   :document-alt " "
   :dots ""
   :config " "
   :calc " "
   :paste " "
   :spellcheck "暈"
   :search " "
   :search-alt " "
   :zoom-plus " "
   :zoom-minus " "
   :glasses " "
   :sunglasses "履"
   :scope " "
   :stackoverflow " "
   :play " "
   :play-circle " "
   :play-circle-alt " "
   :folder " "
   :folder-open " "
   :folder-open-alt " "
   :cursor ""
   :cursor-text "﫦"
   :function "ƒ"
   :function-alt ""
   :pi " "
   :hierarchy "פּ"
   :structure " "
   :property ""
   :one-two-three " "
   :enumerated " "
   :level-down ""
   :level-up ""
   :subdirectory-arrow-left "﬋"
   :subdirectory-arrow-right "﬌"
   :terminal " "
   :terminal-alt " "
   :terminal-alt2 " "
   :package " "
   :package-opened " "
   :package-alt " "
   :package-moving " "
   :cube " "
   :cubes " "
   :comment " "
   :comment-alt " "
   :alarm-light "ﲍ"
   :lightbulb ""
   :lightbulb-alt ""
   :lightbulb-on "ﯦ"
   :lightbulb-on-alt "ﯧ"
   :github " "
   :beer-fa " "
   :beer-mdi ""
   :quote-l " "
   :quote-r " "
   :tag " "
   :tags " "
   :hashtag " "
   :star " "
   :star-alt " "
   :compas " "
   :watch " "
   :symlink " "
   :diff-add " "
   :diff-igored " "
   :diff-modified " "
   :diff-removed " "
   :diff-renamed " "
   :class " "
   :color " "
   :tools " "
   :enum "了"
   :atoz " "
   :buffer " "
   :key " "
   :struct " "
   :reference " "
   :unit "塞"
   :sticky-note " "
   :server " "
   :opensuse " "
   :dinosaur "🦕"
   :ghost "👻"
   :whale "🐋"
   :ruby " "
   :number-0 " "
   :number-1 " "
   :number-2 " "
   :number-3 " "
   :number-4 " "
   :number-5 " "
   :number-6 " "
   :number-7 " "
   :number-8 " "
   :number-9 " "
   :number-9-plus " "
   :number-0-alt " "
   :number-1-alt " "
   :number-2-alt " "
   :number-3-alt " "
   :number-4-alt " "
   :number-5-alt " "
   :number-6-alt " "
   :number-7-alt " "
   :number-8-alt " "
   :number-9-alt " "
   :number-9-plus-alt " "
   :number-0-mult " "
   :number-1-mult " "
   :number-2-mult " "
   :number-3-mult " "
   :number-4-mult " "
   :number-5-mult " "
   :number-6-mult " "
   :number-7-mult " "
   :number-8-mult " "
   :number-9-mult " "
   :number-9-plus-mult " "
   :arrow-u " "
   :arrow-d " "
   :arrow-l " "
   :arrow-r " "
   :arrow-u-alt ""
   :arrow-d-alt ""
   :arrow-l-alt " "
   :arrow-r-alt " "
   :keyboard-tab " "
   :arrow-collapse-u "ﲓ"
   :arrow-collapse-d "ﲐ"
   :arrow-collapse-l "ﲑ"
   :arrow-collapse-r "ﲒ"
   :arrow-expand-u "ﲗ"
   :arrow-expand-d "ﲔ"
   :arrow-expand-l "ﲕ"
   :arrow-expand-r "ﲖ"
   :precedes "←"
   :extends "→"
   :trail "·"
   :nbsp "␣"
   :fold-open ""
   :fold-closed ""
   :rquot "❯"
   :chevron-u " "
   :chevron-d " "
   :chevron-l ""
   :chevron-r ""
   :round-l ""
   :round-r ""
   :tri-l ""
   :tri-r ""
   :ltri-l ""
   :ltri-r ""
   :utri-l " "
   :utri-r ""
   :pix-l " "
   :pix-r " "})

(def popfix-border-chars
  {:TOP_LEFT "┌"
   :TOP_RIGHT "┐"
   :MID_HORIZONTAL "─"
   :MID_VERTICAL "│"
   :BOTTOM_LEFT "└"
   :BOTTOM_RIGHT "┘"})

(def popfix-border-chars-alt
  {:TOP_LEFT "╭"
   :TOP_RIGHT "╮"
   :MID_HORIZONTAL "─"
   :MID_VERTICAL "│"
   :BOTTOM_LEFT "╰"
   :BOTTOM_RIGHT "╯"})

(def progress
  ["" "" "" "" "" ""])

(def spinners
  ["" "" "" "" "" ""])

(def brailles
  ["⠀" "⠁" "⠂" "⠃" "⠄" "⠅" "⠆" "⠇" "⡀" "⡁" "⡂" "⡃" "⡄" "⡅" "⡆" "⡇"
   "⠈" "⠉" "⠊" "⠋" "⠌" "⠍" "⠎" "⠏" "⡈" "⡉" "⡊" "⡋" "⡌" "⡍" "⡎" "⡏"
   "⠐" "⠑" "⠒" "⠓" "⠔" "⠕" "⠖" "⠗" "⡐" "⡑" "⡒" "⡓" "⡔" "⡕" "⡖" "⡗"
   "⠘" "⠙" "⠚" "⠛" "⠜" "⠝" "⠞" "⠟" "⡘" "⡙" "⡚" "⡛" "⡜" "⡝" "⡞" "⡟"
   "⠠" "⠡" "⠢" "⠣" "⠤" "⠥" "⠦" "⠧" "⡠" "⡡" "⡢" "⡣" "⡤" "⡥" "⡦" "⡧"
   "⠨" "⠩" "⠪" "⠫" "⠬" "⠭" "⠮" "⠯" "⡨" "⡩" "⡪" "⡫" "⡬" "⡭" "⡮" "⡯"
   "⠰" "⠱" "⠲" "⠳" "⠴" "⠵" "⠶" "⠷" "⡰" "⡱" "⡲" "⡳" "⡴" "⡵" "⡶" "⡷"
   "⠸" "⠹" "⠺" "⠻" "⠼" "⠽" "⠾" "⠿" "⡸" "⡹" "⡺" "⡻" "⡼" "⡽" "⡾" "⡿"
   "⢀" "⢁" "⢂" "⢃" "⢄" "⢅" "⢆" "⢇" "⣀" "⣁" "⣂" "⣃" "⣄" "⣅" "⣆" "⣇"
   "⢈" "⢉" "⢊" "⢋" "⢌" "⢍" "⢎" "⢏" "⣈" "⣉" "⣊" "⣋" "⣌" "⣍" "⣎" "⣏"
   "⢐" "⢑" "⢒" "⢓" "⢔" "⢕" "⢖" "⢗" "⣐" "⣑" "⣒" "⣓" "⣔" "⣕" "⣖" "⣗"
   "⢘" "⢙" "⢚" "⢛" "⢜" "⢝" "⢞" "⢟" "⣘" "⣙" "⣚" "⣛" "⣜" "⣝" "⣞" "⣟"
   "⢠" "⢡" "⢢" "⢣" "⢤" "⢥" "⢦" "⢧" "⣠" "⣡" "⣢" "⣣" "⣤" "⣥" "⣦" "⣧"
   "⢨" "⢩" "⢪" "⢫" "⢬" "⢭" "⢮" "⢯" "⣨" "⣩" "⣪" "⣫" "⣬" "⣭" "⣮" "⣯"
   "⢰" "⢱" "⢲" "⢳" "⢴" "⢵" "⢶" "⢷" "⣰" "⣱" "⣲" "⣳" "⣴" "⣵" "⣶" "⣷"
   "⢸" "⢹" "⢺" "⢻" "⢼" "⢽" "⢾" "⢿" "⣸" "⣹" "⣺" "⣻" "⣼" "⣽" "⣾" "⣿"])

;; ; => "⠱"
;; (pos->braille [0 0]
;;               [1 1]
;;               [1 2])
(defn pos->braille [...]
  (let [->idx (fn [[x y]]
                (* (^ 2 y) (^ 16 x)))]
                ;; returns an index to enable specified place (x, y) of braille.
                ;; x: [0-1], y: [0-3]"
    (->> [...]
         (core.map ->idx)
         (core.reduce (fn [acc x]
                        (+ acc x)) 0)
         (core.inc)
         (. brailles))))
