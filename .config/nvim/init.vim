

ca tn tabnew
set completeopt-=preview
set nohlsearch
set number
set clipboard+=unnamedplus
set mouse=a
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set hidden
set noshowmode
set updatetime=300
set splitbelow
set splitright
map q: <Nop>
nnoremap Q <nop>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> f :Telescope live_grep<CR>
nnoremap <silent> F :Telescope find_files<CR>

call plug#begin()
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'iamcco/markdown-preview.nvim'
	Plug 'habamax/vim-gruvbit'
	Plug 'dracula/vim'
	Plug 'ThePrimeagen/harpoon'
	Plug 'morhetz/gruvbox'
	Plug 'alvan/vim-closetag'
	Plug 'gregsexton/MatchTag'
	"Plug 'mattn/Emmet-vim'
	Plug 'psliwka/vim-smoothie'
	Plug 'tpope/vim-fugitive'
	"Plug 'airblade/vim-gitgutter'
	Plug 'itchyny/vim-gitbranch'
	" Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-surround'
	Plug 'leafOfTree/vim-vue-plugin' 
	"Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
	Plug 'neoclide/coc.nvim', {'branch': 'release'} 
	"{'branch':'master', 'do': 'yarn install --frozen-lockfile'}
	"Plug 'sheerun/vim-polyglot'
	"Plug 'tpope/vim-rails'
	Plug 'jiangmiao/auto-pairs'
	Plug 'jparise/vim-graphql'
	Plug 'itchyny/lightline.vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'fatih/vim-go'
"	Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'rhysd/git-messenger.vim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'lewis6991/gitsigns.nvim'
	Plug 'ThePrimeagen/harpoon'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"	Plug 'styled-components/vim-styled-components'
"
	Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'romgrk/barbar.nvim'

call plug#end()




noremap <C-j> :<C-U>tabprevious<CR> 
noremap <C-k> :<C-U>tabnext<CR> 
"noremap <C-u> :<C-U>bprevious<CR> 
"noremap <C-i> :<C-U>bnext<CR> 
let g:gruvbox_italic = '1'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_signs = '1'
"colorscheme gruvbox
"colorscheme onedark
colorscheme dracula
"   let g:lightline = {
" 	\ 'colorscheme': 'gruvbox',
" 	\ 'active': {
" 	\   'left': [ [ 'mode', 'paste' ],
" 	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ],
"   	\	'right': [ ['filetype'] ,
"   	\				['gitbranch'],
"   	\				['fileformat']]
" 	\ },
" 	\ 'component_function': {
"   	\	'gitbranch': 'FugitiveHead',
" 	\   'cocstatus': 'coc#status',
" 	\ 'filename': 'LightlineFilename',
"   	\ 'filetype': 'MyFiletype',
"   	\ 'fileformat': 'MyFileformat',
" 	\},
" 	\'tab_component_function':{
"   	\'tabnum': 'LightlineWebDevIcons',
" 	\ }
" 	\}
"
" function! LightlineWebDevIcons(n)
"   let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
"   return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
" endfunction
   
function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction
  
function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  endfunction
function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"highlight Pmenu ctermbg=gray guibg=gray
"autocmd! FileType fzf set laststatus=0 noshowmode noruler
"			\|autocmd BufLeave <buffer> set laststatus=2 showmode ruler
"""let g:fzf_layout = {'left': '20%'}
let g:fzf_action = {
			\'enter': 'tab split',
			\'ctrl-v': 'vsplit',
			\'ctrl-h':'split'} 
nmap <F1> :CocCommand explorer<CR>
"nmap <F1> :CHADopen<CR>
"nmap <F1> :NvimTreeToggle<CR>

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <C-s> :CocCommand prettier.formatFile <CR>
let g:closetag_filetypes= 'html,jsx,javascriptreact,javascript,typescript, typescriptreact, tsx'	
"let g:node_client_debug= 1
"

au! BufRead,BufNewFile *.rsh setfiletype javascript

"g:smoothie_enabled = 1
"
"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd CursorHold * silent call CocActionAsync('highlight')

:map <C-U>  20<C-Y>


nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>


" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


let mapleader = ","
nnoremap <leader>gb :Git blame<CR>


let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html', 'pug'],
      \   'script': ['javascript', 'typescript', 'coffee'],
      \   'style': ['css', 'scss', 'sass', 'less', 'stylus'],
      \   'i18n': ['json', 'yaml'],
      \   'route': 'json',
      \},
      \'full_syntax': ['json'],
      \'initial_indent': ['i18n', 'i18n.json', 'yaml'],
      \'attribute': 1,
      \'keyword': 1,
      \'debug': 0,
      \}



source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/config.lua


set nobackup
set nowritebackup
