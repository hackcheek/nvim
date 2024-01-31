require('gitblame').setup {
     --Note how the `gitblame_` prefix is omitted in `setup`
    enabled = true,
}

vim.g.gitblame_message_template = '| <date> • <summary>'
vim.g.gitblame_date_format = '%r'
vim.g.gitblame_use_blame_commit_file_urls = true
vim.keymap.set('n', '<leader>gb', vim.cmd.GitBlameToggle)
vim.keymap.set('n', '<leader>go', vim.cmd.GitBlameOpenCommitURL)
