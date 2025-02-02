-- NVIM-COLORIZER
-- ==============
-- See: https://github.com/norcalli/nvim-colorizer.lua

require('colorizer').setup {
  css = { rgb_fn = true },
  scss = { rgb_fn = true },
  sass = { rgb_fn = true },
  stylus = { rgb_fn = true },
  vim = { names = false },
  'javascript',
  'javascriptreact',
  'typescript',
  'typescriptreact',
  html = {
    mode = 'foreground',
  },
}
