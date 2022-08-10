
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
" nnoremap <silent> f :Rg<CR>
" nnoremap <silent> F :Files<CR>


source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/config.lua
source $HOME/.config/nvim/telescope.lua


noremap <C-j> :<C-U>tabprevious<CR> 
noremap <C-k> :<C-U>tabnext<CR> 
"noremap <C-u> :<C-U>bprevious<CR> 
"noremap <C-i> :<C-U>bnext<CR> 
let g:gruvbox_italic = '1'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_signs = '1'
" colorscheme gruvbox

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

" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1):
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif



" let g:fzf_action = {
" 			\'enter': 'tab split',
" 			\'ctrl-v': 'vsplit',
" 			\'ctrl-h':'split'} 
nmap <F1> :CocCommand explorer<CR>
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


" let mapleader = ","
let mapleader = "\<Space>" 
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





set nobackup
set nowritebackup
nmap <leader>a <Plug>(coc-codeaction)

" colorscheme everforest
colorscheme gruvbox-material
" colorscheme apprentice
" set background=dark
