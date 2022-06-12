--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = "\\"

require('plugins')   -- Plugins

-- colorscheme
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

-- treesitter
local configs = require'nvim-treesitter.configs'
configs.setup {
  ensure_installed = {'python', 'ruby', 'cpp'},
  highlight = {
    enable = true,
  }
}

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
-- require('keys')      -- Keymaps
-- require('plug')      -- Plugins
