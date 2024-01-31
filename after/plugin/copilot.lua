vim.keymap.set('i', '<C-W>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<C-H>', '<Plug>(copilot-previous)')
vim.keymap.set('i', '<C-L>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<C-\\>', '<Plug>(copilot-suggest)')
vim.keymap.set('i', '<C-V>', '<Plug>(copilot-accept-line)')

vim.keymap.set('i', '<C-T>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
