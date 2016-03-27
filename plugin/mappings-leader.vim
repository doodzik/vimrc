nnoremap <leader>f :call SelectaFile(".")<cr>

" open splits
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

" open vimrc in split view
nnoremap <leader>r <C-w><C-v><C-l>:e $MYVIMRC<cr>

" open new tab and open file
nnoremap <leader>t :tabnew <cr>
nnoremap <Leader>c :tabc<cr>

" remove all end white spaces and write
nnoremap <leader>w  mz :%s/\s\+$//e<cr> :noh<cr> :w<cr> `z

map <leader>n :call RenameFile()<cr>

" quickly fix spelling error
nnoremap <leader>z 1z=
