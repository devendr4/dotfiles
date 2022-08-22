return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use  {'nvim-telescope/telescope.nvim',
  requires =  {'nvim-lua/plenary.nvim'} }
  use 'romgrk/barbar.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'

  use 'numToStr/Comment.nvim'
  --git
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'

  use {
       'nvim-treesitter/nvim-treesitter',
       run = ':TSUpdate'
    }

  -- themes
  use 'sainnhe/everforest'

  use 'norcalli/nvim-colorizer.lua'
  use 'phaazon/hop.nvim'

  --autopairs/tags
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'
  use {'neoclide/coc.nvim', branch = 'release'}


  use 'karb94/neoscroll.nvim'

  use 'goolord/alpha-nvim'
  use 'Shatur/neovim-session-manager'

  use 'lukas-reineke/indent-blankline.nvim'
  end
)
