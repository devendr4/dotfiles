call plug#begin()
Plug 'rktjmp/lush.nvim'
  Plug 'ap/vim-css-color'
  Plug 'alvan/vim-closetag'
  Plug 'gregsexton/MatchTag'
  " Plug 'psliwka/vim-smoothie'
  Plug 'tpope/vim-fugitive'
  Plug 'sainnhe/everforest'
  Plug 'sainnhe/gruvbox-material'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

Plug'phaazon/hop.nvim'
  Plug 'tpope/vim-surround'
  Plug 'leafOfTree/vim-vue-plugin' 
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

  "Coc autocomplete
  " Plug 'neoclide/coc.nvim', {'branch': 'release'} 
  " Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
  " Plug 'neoclide/coc-git', {'do': 'yarn install --frozen-lockfile'}
  " Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
  " Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
  " Plug 'neoclide/coc-sources', {'do': 'yarn install --frozen-lockfile'}
  " Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
  " Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
  " Plug 'josa42/coc-go', {'do': 'yarn install --frozen-lockfile'}
  " Plug 'fannheyward/coc-rust-analyzer', {'do': 'yarn install --frozen-lockfile'}
  " Plug 'fannheyward/telescope-coc.nvim'
  " Plug 'felippepuhle/coc-graphql', {'do': 'yarn install --frozen-lockfile'}


  " Plug 'neovim/nvim-lspconfig'
  " Plug 'jiangmiao/auto-pairs'
  Plug 'jparise/vim-graphql'
  Plug 'fatih/vim-go'

  Plug 'lewis6991/gitsigns.nvim'

  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  "Theme
  Plug 'habamax/vim-gruvbit'
  Plug 'dracula/vim'
  " Plug 'morhetz/gruvbox'
Plug'ellisonleao/gruvbox.nvim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'xiyaowong/nvim-transparent'
Plug 'shaunsingh/nord.nvim'

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
  "
  Plug 'lukas-reineke/indent-blankline.nvim'

  Plug 'kyazdani42/nvim-tree.lua'


  Plug 'goolord/alpha-nvim'

  "autopairs/tags
  Plug 'windwp/nvim-ts-autotag'
  Plug 'windwp/nvim-autopairs'
  Plug 'karb94/neoscroll.nvim'
  
  Plug 'adisen99/apprentice.nvim'

  "lsp config
  Plug 'williamboman/mason.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'jose-elias-alvarez/null-ls.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'


" main one
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
" Need to **configure separately**

Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
" - shell repl
" - nvim lua api
" - scientific calculator
" - comment banner
" - etc

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
  
  call plug#end()
