local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'pyright',
  'tsserver',
  'eslint',
  'sumneko_lua',
  'rust_analyzer',
  'html',
  'cssls',
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Inserts }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<Down>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-u>'] = cmp.mapping.scroll_docs(-4),
  ['<C-d>'] = cmp.mapping.scroll_docs(4),
})

lsp.set_preferences({
  sign_icons = { }
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set('n', '<leader>ee', function() vim.diagnostic.open_float(bufnr) end, opts)
  vim.keymap.set('n', '<leader>el', function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set('n', '<leader>eh', function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
  vim.keymap.set('n', '<leader>r', function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)

end)

lsp.setup()
