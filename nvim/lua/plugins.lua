local use = require('packer').use
require('packer').startup(function() use 'wbthomason/packer.nvim' -- Package manager
  use {
    'neovim/nvim-lspconfig',
    requires = { { 'jubnzv/virtual-types.nvim' } } -- Collection of configurations for the built-in LSP client	
  }
  use 'nvim-treesitter/nvim-treesitter'
  -- color
use { "ellisonleao/gruvbox.nvim" }
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

  -- tags
  use "ludovicchabant/vim-gutentags"
  
  -- comments
  use "numToStr/Comment.nvim"

  -- rails
  use "tpope/vim-rails"
  use "tpope/vim-sleuth"

  -- tests
  use "vim-test/vim-test"

  -- tmux nav

  -- statusline

-- if use nvim-web-devicons
use {
  'yamatsum/nvim-nonicons',
  requires = {'kyazdani42/nvim-web-devicons'}
}


-- sneak
use "justinmk/vim-sneak"

-- lightbulb for code actions
use {
    'kosayoda/nvim-lightbulb',
    requires = 'antoinemadec/FixCursorHold.nvim',
}

-- blame
use "f-person/git-blame.nvim"

use "AndrewRadev/splitjoin.vim"

use "airblade/vim-gitgutter"

use {
  'glts/vim-radical',
  requires = 'glts/vim-magnum'
}

use "jubnzv/virtual-types.nvim"

use "christoomey/vim-tmux-navigator"

use 'Mofiqul/dracula.nvim'


end)
