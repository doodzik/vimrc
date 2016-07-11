" Recover from accidental Ctrl-U/W
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" prevent esc from going back
inoremap <c-c> <c-c>`^
inoremap <c-d> <c-c> u

" This unsets the 'last search pattern' register by hitting return
nnoremap <silent> <CR> :noh<CR>

" stop enteritg ex mode
" and map it to quit window
nnoremap <silent> Q :q <cr>

" write as sudo
cmap w!! w !sudo tee % >/dev/null

" """""""
" Plugins
" """""""

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" nextval bindings
nmap <silent> + <Plug>nextvalInc
nmap <silent> - <Plug>nextvalDec


" """"""
" LEADER
" """"""

" changing the leader
" let mapleader = "\<Space>"
nmap <SPACE> <leader>
" the following 2 mappings are here because I use an ergoDox keyboard
nmap <BS> <leader>
nmap <Del> <leader>

" open splits
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

" open vimrc in split view
nnoremap <leader>r <C-w><C-v><C-l>:e $MYVIMRC<cr>

" open new tab and open file
nnoremap <leader>t :tabnew <cr>
nnoremap <Leader>c :tabc<cr>

" quickly fix spelling error
nnoremap <leader>z 1z=