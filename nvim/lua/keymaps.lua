-- escape
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("n", '<leader>w', ':w<CR>')
vim.keymap.set("n", '<leader>q', ':q<CR>')

-- hide highlight
vim.keymap.set('n', '<ESC>', ':noh<CR>', { silent = true, remap = true })
vim.keymap.set('n', '<leader>h', ':noh<CR>', { silent = true })

-- telescope
-- file pickers
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files() end, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep() end, { desc = 'Live Grep' })
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').buffers() end, { desc = 'Find Buffers' })
-- lsp/smart stuff
vim.keymap.set('n', '<leader>fs', function() require('telescope.builtin').treesitter() end, { desc = 'Treesitter' })
vim.keymap.set('n', '<leader>fs', function() require('telescope.builtin').treesitter() end, { desc = 'Treesitter' })
vim.keymap.set('n', '<leader>fl', function() require('telescope.builtin').lsp_document_symbols() end, { desc = 'Treesitter' })
vim.keymap.set('n', '<leader>fj', function() require('telescope.builtin').lsp_definition() end, { desc = 'Treesitter' })
vim.keymap.set('n', '<leader>fi', function() require('telescope.builtin').current_buffer_fuzzy_find() end, { desc = 'In Buffer' })
vim.keymap.set('n', '<leader>fr', function() require('telescope.builtin').resume() end, { desc = 'In Buffer' })
vim.keymap.set('n', '<leader>fu', function() require('telescope.builtin').grep_string() end, { desc = 'In Buffer' })

-- trouble
vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end)
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)

