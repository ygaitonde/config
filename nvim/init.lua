--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = "\\"

require('plugins')   -- Plugins

-- theme
vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme dracula]])

-- comments
require('Comment').setup()


-- lightbulbs
require('nvim-lightbulb').setup({autocmd = {enabled = true}})

-- solargraph
require'lspconfig'.solargraph.setup{}
-- tsserver
require'lspconfig'.tsserver.setup{}
require'lspconfig'.ocamllsp.setup { on_attach = require'virtualtypes'.on_attach }
require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.clangd.setup{}

-- indent lines
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

-- treesitter
local configs = require'nvim-treesitter.configs'
configs.setup {
  ensure_installed = {'python', 'ruby', 'cpp'},
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

require'nvim-tree'.setup{
  renderer = {
    icons = { 
      show = {
        folder_arrow = false,
      },
    },
  },
}

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('comp') -- Completion
require('keymaps')      -- Keymaps
