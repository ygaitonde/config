-- escape
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("n", '<leader>w', ':w<CR>')
vim.keymap.set("n", '<leader>q', ':q<CR>')

-- hide highlight
vim.keymap.set('n', '<ESC>', ':noh<CR>', { silent = true, remap = true })
vim.keymap.set('n', '<leader>h', ':noh<CR>', { silent = true })

-- telescope
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files() end, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep() end, { desc = 'Live Grep' })
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').buffers() end, { desc = 'Find Buffers' })
vim.keymap.set('n', '<leader>fr', function() require('telescope.builtin').git_branches() end, { desc = 'Find Buffers' })
vim.keymap.set('n', '<leader>ft', function() require('telescope.builtin').treesitter() end, { desc = 'Treesitter' })

