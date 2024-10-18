vim.opt.syntax = "ON"
vim.opt.backup = false
vim.opt.compatible = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = ''

-- vim.opt.guicursor = ''

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.wrap = true

vim.opt.fileencoding = 'utf-8'

vim.opt.splitbelow = true
vim.opt.splitright = false

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.showmode = false

vim.opt.clipboard = 'unnamedplus'

vim.opt.completeopt = { 'menuone', 'noselect'}

vim.cmd('set list')
vim.cmd('set listchars=tab:>·,trail:␠')

vim.opt.indentexpr = ''
vim.opt.cindent = false
vim.opt.autoindent = false
vim.opt.smartindent = false
vim.cmd('filetype indent off')
vim.cmd('filetype plugin indent off')

vim.opt.signcolumn = 'yes:2'
