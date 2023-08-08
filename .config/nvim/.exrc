let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <BS> v:lua.MiniPairs.bs()
inoremap <C-W> u
nnoremap <silent>  h
nnoremap <silent> <NL> j
nnoremap <silent>  k
nnoremap <silent>  l
xnoremap # y?\V"
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap * y/\V"
nnoremap Y y$
onoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top')
xnoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top')
nnoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top', true)
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
onoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom')
xnoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom')
nnoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom', true)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
onoremap <silent> ai <Cmd>lua MiniIndentscope.textobject(true)
xnoremap <silent> ai <Cmd>lua MiniIndentscope.textobject(true)
xmap a% <Plug>(MatchitVisualTextObject)
onoremap <silent> gc <Cmd>lua MiniComment.textobject()
xnoremap <silent> gc :lua MiniComment.operator('visual')
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
onoremap <silent> ii <Cmd>lua MiniIndentscope.textobject(false)
xnoremap <silent> ii <Cmd>lua MiniIndentscope.textobject(false)
xnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
xnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))
nnoremap <silent> <C-Right> <Cmd>vertical resize +2
nnoremap <silent> <C-Left> <Cmd>vertical resize -2
nnoremap <silent> <C-Down> <Cmd>resize -2
nnoremap <silent> <C-Up> <Cmd>resize +2
nnoremap <silent> <C-K> k
nnoremap <silent> <C-J> j
nnoremap <silent> <C-H> h
nnoremap <silent> <C-L> l
inoremap <silent> <expr>  v:lua.MiniPairs.cr()
inoremap  u
inoremap <expr> " v:lua.MiniPairs.closeopen('""', "[^\\].")
inoremap <expr> ' v:lua.MiniPairs.closeopen("''", "[^%a\\].")
inoremap <expr> ( v:lua.MiniPairs.open("()", "[^\\].")
inoremap <expr> ) v:lua.MiniPairs.close("()", "[^\\].")
inoremap <expr> [ v:lua.MiniPairs.open("[]", "[^\\].")
inoremap <expr> ] v:lua.MiniPairs.close("[]", "[^\\].")
inoremap <expr> ` v:lua.MiniPairs.closeopen("``", "[^\\].")
inoremap <expr> { v:lua.MiniPairs.open("{}", "[^\\].")
inoremap <expr> } v:lua.MiniPairs.close("{}", "[^\\].")
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set helplang=en
set noloadplugins
set packpath=/usr/share/nvim/runtime
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/mini.nvim,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/LuaSnip,~/.local/share/nvim/lazy/cmp-nvim-lsp,~/.local/share/nvim/lazy/nvim-cmp,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/lsp-zero.nvim,~/.local/share/nvim/lazy/everforest,/usr/share/nvim/runtime,/usr/share/nvim/runtime/pack/dist/opt/matchit,/usr/lib/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/cmp-nvim-lsp/after
set termguicolors
set window=67
" vim: set ft=vim :
