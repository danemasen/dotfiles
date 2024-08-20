vim.opt.laststatus = 3

vim.cmd('highlight StatusBar guibg=#3c4841 guifg=#a7c080')

vim.opt.statusline = '%#StatusBar# %{mode()} %n %f %m %= %Y %P %l:%c '
