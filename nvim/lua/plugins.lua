local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client	
  use 'nvim-treesitter/nvim-treesitter'
  use 'sheerun/vim-polyglot'

  -- color
  use 'navarasu/onedark.nvim'

  -- file tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }  
  }

  -- context
  use 'nvim-treesitter/nvim-treesitter-context'
   
  -- blank lines
  use "lukas-reineke/indent-blankline.nvim"

  -- bracket colorizer
  use "p00f/nvim-ts-rainbow"

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- Completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip"

  -- tags
  use "ludovicchabant/vim-gutentags"
  
  -- comments
  use "numToStr/Comment.nvim"

  -- rails
  use "tpope/vim-rails"

  -- tests
  use "vim-test/vim-test"

  -- tmux nav
  use "christoomey/vim-tmux-navigator"
end)
