(module core.autocmds
  {require-macros [core.macros]})

;; Smart `q` close windows
(autocmd! FileType [help startuptime qf lspinfo] "nnoremap <buffer><silent> q :close<CR>")
(autocmd! FileType man "nnoremap <buffer><silent> q :quit<CR>")

;; Restore cursor on exit
(augroup! restore-cursor-on-exit
          (autocmd! VimLeave *
                    #(set! guicursor ["a:ver100-blinkon0"])))

;; Automatically resize splits when window is resized
(augroup! resize-splits-on-resize
          (autocmd! VimResized *
                    "wincmd ="))

;; Automatically read file when it changes on disk
(augroup! read-file-on-disk-change
          (autocmd! [FocusGained BufEnter CursorHold CursorHoldI] *
                    #(if (and
                          (not= (vim.fn.mode) "c")
                          (= (vim.fn.bufexists "[Command Line]") 0))
                       (vim.cmd "checktime")))
          (autocmd! FileChangedShellPost *
                    "echom 'File changed on disk. Buffer reloaded.'"))

;; Open file on last position
(augroup! open-file-on-last-position
          (autocmd! BufReadPost *
                    #(if (and
                          (> (vim.fn.line "'\"") 1)
                          (<= (vim.fn.line "'\"") (vim.fn.line "$")))
                       (vim.cmd "normal! g'\""))))

;; Disable spell in certain filetypes
(augroup! disable-spell-on-filetypes
          (autocmd! FileType [help packer]
                    #(set-local! nospell)))

;; Disable colorcolumn in certain filetypes
(augroup! disable-colorcolumn-on-filetypes
          (autocmd! FileType [help packer
                              NvimTree fern
                              fennel clojure lisp
                              markdown]
                    #(set-local! colorcolumn [])))

;; Remove highlight 
(augroup! clear-hl-search
          (autocmd! CmdlineEnter ["/" "?"] "set hlsearch")
          (autocmd! CmdlineLeave ["/" "?"] "set nohlsearch"))

;; Set terminal options
(augroup! terminal-options
          ; Enter Terminal-mode (insert) automatically
          (autocmd! TermOpen *
                    "startinsert")
          ; Disables line number on terminal buffers
          (autocmd! TermOpen *
                    #(do
                       (set-local! nonumber)
                       (set-local! norelativenumber)))
          ; Disables spell on terminal buffers
          (autocmd! TermOpen *
                    #(set-local! nospell))
          ; Disables sign column on terminal buffers
          (autocmd! TermOpen *
                    #(set-local! signcolumn :no)))


