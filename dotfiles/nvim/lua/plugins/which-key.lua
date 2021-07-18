-- WHICH-KEY PLUGIN
-- ----------------

require('which-key').setup {
  plugins = {
    marks = false,
    registers = false,
  },
  key_labels = { ['<space>'] = 'SPC' },
  icons = { separator = ' ' },
  window = { border = 'single' },
}

require('which-key').register({
  ['1'] = 'which_key_ignore',
  ['2'] = 'which_key_ignore',
  ['3'] = 'which_key_ignore',
  ['4'] = 'which_key_ignore',
  ['5'] = 'which_key_ignore',
  ['6'] = 'which_key_ignore',
  ['7'] = 'which_key_ignore',
  ['8'] = 'which_key_ignore',
  ['9'] = 'Dotfiles',
  ['0'] = 'Nvim Conf',
  ['<Space>'] = 'Find All',
  [';'] = 'Live RipGrep',
  f = {
    name = 'Files',
    b = 'File Browser',
    c = 'Close Buffer',
    o = 'New File',
    f = 'Find Files',
    d = 'Delete Buffer',
    r = 'Rename',
    m = 'Move',
    n = 'Next Buffer',
    p = 'Previous Buffer',
    D = 'Delete File!',
    s = 'Save',
    S = 'Save All',
  },
  b = {
    name = 'Buffers',
    b = 'List Buffers',
    c = 'Close Buffer',
    o = 'New File',
    f = 'Find Files',
    d = 'Delete Buffer',
    r = 'Rename',
    m = 'Move',
    n = 'Next Buffer',
    p = 'Previous Buffer',
    D = 'Delete File!',
    s = 'Save',
    S = 'Save All',
  },
  c = {
    name = 'Code',
  },
  g = {
    name = 'Git',
  },
  h = {
    name = 'Help',
    p = {
      name = 'Packer Manager',
      i = 'Install',
      u = 'Update',
      c = 'Compile',
      s = 'Compile',
      p = 'Profile',
    },
  },
  l = {
    name = 'LSP',
    f = 'Format',
    l = 'Log',
    i = 'Info',
    s = 'Start',
    r = 'Restart',
  },
  p = {
    name = 'Projects',
  },
  q = {
    name = 'Quit',
    q = 'Quit Vim',
    Q = 'Quit Without SAVING!',
    s = 'Save then Quit',
  },
  t = {
    name = 'Toggles',
  },
  w = {
    name = 'Windows',
    ['='] = 'Ballance Windows',
    s = 'Split Window',
    v = 'Vertical Split Window',
    w = 'Jump Between',
    c = 'Window Close',
    d = 'Window Close',
    h = 'Jump Left',
    j = 'Jump Down',
    k = 'Jump Up',
    l = 'Jump Right',
    H = 'Move Left',
    J = 'Move Down',
    K = 'Move Up',
    L = 'Move Right',
  },
  z = {
    name = 'Digital Garden',
    ['b'] = 'Find Backlinks',
    ['B'] = 'Find Backlinks and Insert',
    ['<CR>'] = 'Enter Link',
    z = 'Find Notes',
    Z = 'Find Notes and Insert',
    t = 'Find Tags',
    i = 'Goto Index',
    s = 'Start Server',
    n = 'New Note',
    ['['] = 'Next Link',
    [']'] = 'Previous Link',
  },
}, {
  prefix = '<Leader>',
})
