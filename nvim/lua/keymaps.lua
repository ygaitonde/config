-- escape
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("n", '<leader>w', ':w<CR>')
vim.keymap.set("n", '<leader>q', ':q<CR>')

-- hide highlight
vim.keymap.set('n', '<ESC>', ':noh<CR>', { silent = true, remap = true })
vim.keymap.set('n', '<leader>h', ':noh<CR>', { silent = true })

-- vim.keymap.set("n", '<leader>z', ':TmuxNavigateUp<CR>', { silent = true })
-- vim.keymap.set("n", '<C-j>', ':TmuxNavigateDown<CR>', { silent = true})
-- vim.keymap.set("n", '<C-k>', ':TmuxNavigateUp<CR>', { silent = true })
-- vim.keymap.set("n", '<C-l>', ':TmuxNavigateLeft<CR>', { silent = true})
-- vim.keymap.set("n", '<C-h>', ':TmuxNavigateRight<CR>', { silent = true})

-- telescope
-- file pickers
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files() end, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep() end, { desc = 'Live Grep' })
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').buffers() end, { desc = 'Find Buffers' })
-- lsp/smart stuff
vim.keymap.set('n', '<leader>fi', function() require('telescope.builtin').current_buffer_fuzzy_find() end, { desc = 'In Buffer' })
vim.keymap.set('n', '<leader>fr', function() require('telescope.builtin').resume() end, { desc = 'In Buffer' })
vim.keymap.set('n', '<leader>fu', function() require('telescope.builtin').grep_string() end, { desc = 'In Buffer' })


-- format on save
-- vim.api.nvim_command("autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll")

-- trouble
vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end)


