-- escape
vim.keymap.set("n", '<leader>w', ':w!<CR>')
vim.keymap.set("n", '<leader>q', ':q<CR>')

-- hide highlight
vim.keymap.set('n', '<ESC>', ':noh<CR>', { silent = true, remap = true })
vim.keymap.set('n', '<leader>h', ':noh<CR>', { silent = true })
vim.keymap.set('n', '<leader>e', ':lua vim.diagnostic.open_float(0, {scope="line"})<CR>', { silent = true })

-- vim.keymap.set("n", '<leader>z', ':TmuxNavigateUp<CR>', { silent = true })
-- vim.keymap.set("n", '<C-j>', ':TmuxNavigateDown<CR>', { silent = true})
-- vim.keymap.set("n", '<C-k>', ':TmuxNavigateUp<CR>', { silent = true })
-- vim.keymap.set("n", '<C-l>', ':TmuxNavigateLeft<CR>', { silent = true})
-- vim.keymap.set("n", '<C-h>', ':TmuxNavigateRight<CR>', { silent = true})

-- telescope
-- file pickers
vim.keymap.set('n', '<leader>f', function() require('telescope.builtin').find_files() end, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>/', function() require('telescope.builtin').live_grep() end, { desc = 'Live Grep' })
vim.keymap.set('n', '<leader>b', function() require('telescope.builtin').buffers() end, { desc = 'Find Buffers' })
-- lsp/smart stuff
vim.keymap.set('n', '<leader>l', function() require('telescope.builtin').resume() end, { desc = 'Previous' })
vim.keymap.set('n', '<leader>u', function() require('telescope.builtin').grep_string() end, { desc = 'Grep Under Cursor' })


-- format on save
-- vim.api.nvim_command("autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll")

-- trouble
vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end)
vim.keymap.set('n', '<leader>;', function() vim.lsp.buf.hover() end)
vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end)
vim.keymap.set('n', '<leader>r', function() vim.lsp.buf.references() end)
vim.keymap.set('n', '<leader>cr', function() vim.lsp.buf.rename() end)


