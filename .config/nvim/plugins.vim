call plug#begin()
  Plug 'ap/vim-css-color'
  Plug 'alvan/vim-closetag'
  Plug 'gregsexton/MatchTag'
  Plug 'psliwka/vim-smoothie'
  Plug 'tpope/vim-fugitive'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  Plug 'tpope/vim-surround'
  Plug 'leafOfTree/vim-vue-plugin' 
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

  "Coc autocomplete
  Plug 'neoclide/coc.nvim', {'branch': 'release'} 
  Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-git', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-sources', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
  Plug 'josa42/coc-go', {'do': 'yarn install --frozen-lockfile'}
  Plug 'fannheyward/coc-rust-analyzer', {'do': 'yarn install --frozen-lockfile'}
  Plug 'fannheyward/telescope-coc.nvim'
  Plug 'felippepuhle/coc-graphql', {'do': 'yarn install --frozen-lockfile'}


  " Plug 'neovim/nvim-lspconfig'
  Plug 'jiangmiao/auto-pairs'
  Plug 'jparise/vim-graphql'
  Plug 'fatih/vim-go'

  Plug 'lewis6991/gitsigns.nvim'

  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  "Theme
  Plug 'habamax/vim-gruvbit'
  Plug 'dracula/vim'
  Plug 'morhetz/gruvbox'
  Plug 'arcticicestudio/nord-vim'
  Plug 'xiyaowong/nvim-transparent'

  Plug 'norcalli/nvim-colorizer.lua'

  "Icons
  Plug 'kyazdani42/nvim-web-devicons'

  "Comments
  Plug 'numToStr/Comment.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  "indent
  Plug 'lukas-reineke/indent-blankline.nvim'

  Plug 'kyazdani42/nvim-tree.lua'
  call plug#end()
