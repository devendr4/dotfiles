local vim = vim
local api = vim.api


function map(mode, shortcut, command, expr)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true,expr=expr or false })
end

function nmap(shortcut, command,expr)
  map('n', shortcut, command)
end

function imap(shortcut, command, expr)
  map('i', shortcut, command,expr)
end

-- move between splits 
nmap("<c-k>", ":wincmd k<CR>")
nmap("<c-j>", ":wincmd j<CR>")
nmap("<c-h>", ":wincmd h<CR>")
nmap("<c-l>", ":wincmd l<CR>")
-- close buffer
nmap("<leader>d", ":bd<CR>")
nmap("<leader>w", ":w<CR>")
--plugins
nmap ("<F1>", ":NvimTreeFindFileToggle<CR>")
nmap("f", ":Telescope live_grep<CR>")
nmap("<leader>f", ":Telescope find_files<CR>")
--hop
nmap ("<leader>h", ":HopWord<cr>")
nmap ("<leader>l", ":HopLine<cr>")

nmap("<tab>",":if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>")
nmap("<s-tab>",":if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>")

nmap("space","<Nop>")



--all coc related
vim.cmd([[
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()


inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"


if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>a <Plug>(coc-codeaction)
]])
