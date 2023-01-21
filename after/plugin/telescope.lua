local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>of', builtin.find_files, {})
vim.keymap.set('n', '<leader>ob', builtin.buffers, {})
vim.keymap.set('n', '<leader>og', builtin.git_files, {})
vim.keymap.set('n', '<leader>oh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>or', function()
	builtin.grep_string({search = vim.fn.input('Grep > ')});
end)

