ca tn tabnew
set completeopt-=preview
set number
set clipboard+=unnamedplus
set mouse=a
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set hidden
set nobackup
set nowritebackup
set noshowmode
set updatetime=300
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> f :Rg<CR>
noremap <C-j> :<C-U>tabprevious<CR> 
noremap <C-k> :<C-U>tabnext<CR> 
call plug#begin()
	Plug 'alvan/vim-closetag'
	"Plug 'mattn/Emmet-vim'
	Plug 'tpope/vim-fugitive'
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'airblade/vim-gitgutter'
	Plug 'itchyny/vim-gitbranch'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
	Plug 'neoclide/coc.nvim'
	Plug 'sheerun/vim-polyglot' 
	Plug 'jiangmiao/auto-pairs'
	Plug 'itchyny/lightline.vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()
let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeHighlightCursorline = 0
colorscheme gruvbox

  let g:lightline = {
	\ 'colorscheme': 'gruvbox',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ],
  	\	'right': [ ['filetype'] ,
  	\				['gitbranch'],
  	\				['fileformat']]
	\ },
	\ 'component_function': {
  	\	'gitbranch': 'gitbranch#name',
	\   'cocstatus': 'coc#status',
	\ 'filename': 'LightlineFilename',
  	\ 'filetype': 'MyFiletype',
  	\ 'fileformat': 'MyFileformat',
	\},
	\'tab_component_function':{
  	\'tabnum': 'LightlineWebDevIcons',
	\ }
	\}

function! LightlineWebDevIcons(n)
  let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
  return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
endfunction
   
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
"highlight Pmenu ctermbg=gray guibg=gray
"autocmd! FileType fzf set laststatus=0 noshowmode noruler
"			\|autocmd BufLeave <buffer> set laststatus=2 showmode ruler
"""let g:fzf_layout = {'left': '20%'}
let g:fzf_action = {
			\'enter': 'tab split',
			\'ctrl-v': 'vsplit'} 
map gn :bn<cr>
let g:NERDTreeGitStatusUserNerdFonts = 1
let NERDTreeShowHidden=1
nmap <F1> :NERDTreeToggle<CR>
let g:user_emmet_mode='a'
