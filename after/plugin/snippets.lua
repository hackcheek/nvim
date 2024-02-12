SNIPPETS_DIR = vim.fn.stdpath('config') .. '/snippets/'

function writeSnippet(filename)
    local content = vim.fn.readfile(SNIPPETS_DIR .. filename)
    local _start, _ = unpack(vim.api.nvim_win_get_cursor(0))
    local _end = _start + #content

    -- vim.api.nvim_buf_set_lines(0, _start, _end, false, content)
    vim.api.nvim_put(content, 'l', true, false)
end

vim.keymap.set('n', ',pv', ":lua writeSnippet('print_var.py')<CR>9li")
