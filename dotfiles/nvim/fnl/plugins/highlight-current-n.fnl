(module plugins.highlight-current-n)

(import-macros {: nmap!} :core.macros)

(nmap! [n] :n "<Plug>(highlight-current-n-n)")
(nmap! [n] :N "<Plug>(highlight-current-n-N)")
