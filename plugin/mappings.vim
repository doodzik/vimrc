" Recover from accidental Ctrl-U/W
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" prevent esc from going back
inoremap <c-c> <c-c>`^
inoremap <c-d> <c-c> u

" This unsets the 'last search pattern' register by hitting return
nnoremap <silent> <CR> :noh<CR>

" easier replaying of macro
nnoremap @ @q

" stop enteritg ex mode
nnoremap <silent> Q :q <cr>

" write as sudo
cmap w!! w !sudo tee % >/dev/null

" tcsh style editing keys for command mode
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>

" """""""
" Plugins
" """""""

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" nextval bindings
nmap <silent> + <Plug>nextvalInc
nmap <silent> - <Plug>nextvalDec

" fugitive
nmap <silent>  gst :Gstatus <cr>

" """"""
" LEADER
" """"""

" changing the leader
nmap <SPACE> <leader>
" The following 2 mappings are here because I use an ergoDox keyboard
nmap <BS> <leader>
nmap <Del> <leader>

" Open splits
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

" Open vimrc in split view
nnoremap <leader>r <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Close tab
nnoremap <Leader>c :tabc<cr>

" Quickly fix spelling error
nnoremap <leader>z 1z=

" Open FZF
nmap <silent> <leader>f :GFiles<CR>

" Undotree
nnoremap <leader>u :UndotreeToggle<CR>

" Testing
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

