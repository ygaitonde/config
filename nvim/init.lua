--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.opt.ignorecase=true;
vim.opt.smartcase=true;
vim.g.localleader = "\\"
vim.g.did_load_filetypes=1
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover,
  {border = 'rounded'}
)

require('leap').add_default_mappings()

require('plugins')   -- Plugins

require('filetype').setup({
  overrides = {
    extensions = {
      re = "reason",
    }
  }
})

-- theme
vim.opt.background = "dark" -- or "light" for light mode
vim.cmd.colorscheme "gruvbox"

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
  auto_install = true,
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      scope_incremental = '<CR>',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
    },
  },
}

require'nvim-tree'.setup{
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
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
