require('nvim-treesitter.configs').setup({
 ensure_installed = {
  'c',
  'cpp',
  'arduino',
  'vim',
  'vimdoc',
--  'perl',
  'haskell',
  'nim',
  'zig',
  'python',
  'lua',
  'html',
  'css',
  'javascript',
  'markdown',
  'markdown_inline'
 },
 sync_install = true,
 auto_install = false,
 highlight = {
  enable = true,
  additional_vim_regex_highlighting = true
 },
 indent = {
  enable = false
 }
})
