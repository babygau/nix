(import-macros {: g} :core.macros)

(fn setup []
  (g conjure#log#botright true)
  (g conjure#extract#tree_sitter#enabled true)
  (g conjure#filetypes store.ft.conjure))

{: setup}
