(module plugins.conjure
  {require-macros [core.macros]})

(let! conjure#client#fennel#aniseed#aniseed_module_prefix :aniseed.
      conjure#extract#tree_sitter#enabled true)
