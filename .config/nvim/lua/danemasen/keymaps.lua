vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('n', '<C-d>', '<C-d>zz', opts)
keymap('n', '<C-u>', '<C-u>zz', opts)

keymap('n', '', '<CMD>:split | terminal<CR>', opts)
-- keymap('t', '', '<CMD>:bd!<CR>', opts)
keymap('t', '<Esc>', '<C-n>', opts)

keymap('n', '<leader>t', ':tabedit ', opts)
keymap('n', '<leader>x', '<CMD>:tabclose<CR>', opts)
keymap('n', '<C-n>', '<CMD>:tabnext<CR>', opts)
keymap('n', '<C-p>', '<CMD>:tabprevious<CR>', opts)
