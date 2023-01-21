vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>ss', ':w<CR>')
vim.keymap.set('n', '<leader>sS', ':w!<CR>')
vim.keymap.set('n', '<leader>sx', ':wq<CR>')
vim.keymap.set('n', '<leader>sX', ':q!<CR>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', "mzJ`z")
vim.keymap.set('n', '<C-u>', "<C-u>zz")
vim.keymap.set('n', '<C-d>', "<C-d>zz")
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', "\"_dp")

vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")
vim.keymap.set('v', '<leader>y', "\"+y")

vim.keymap.set('n', '<leader>d', "\"_d")
vim.keymap.set('n', '<leader>D', "\"_D")
vim.keymap.set('v', '<leader>d', "\"_d")

vim.keymap.set('n', '<leader>ot', vim.cmd.Ex)
vim.keymap.set('n', '<leader>u', ':UndotreeShow<CR>')

vim.keymap.set('n', '<leader>py', ':!python %<CR>')
vim.keymap.set('n', '<leader>sh', ':!bash %<CR>')
