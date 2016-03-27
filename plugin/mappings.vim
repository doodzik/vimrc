" changing the leader
" let mapleader = "\<Space>"
nmap <SPACE> <leader>
nmap <BS> <leader>
nmap <Del> <leader>

" Recover from accidental Ctrl-U/W
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" prevent esc from going back
inoremap <c-c> <c-c>`^

inoremap <c-d> <c-c> u

" This unsets the 'last search pattern' register by hitting return
nnoremap <silent> <CR> :noh<CR><CR>

" stop enteritg ex mode
" and map it to quit window
nnoremap <silent> Q :q <cr>

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" nextval bindings
nmap <silent> + <Plug>nextvalInc
nmap <silent> - <Plug>nextvalDec

" Indent if we're at the beginning of a line. Else, do completion.
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

"TODO try this
cmap w!! w !sudo tee % >/dev/null

nmap <s-l> :tabn<cr>  
nmap <s-h> :tabp<cr> 
