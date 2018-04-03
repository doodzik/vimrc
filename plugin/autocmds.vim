augroup vimrcEx
  " Clear all autocmds in the group
  autocmd!

  " CursorLineOnlyInActiveWindow
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline

  " reload vimrc if written
  autocmd bufwritepost .vimrc source $MYVIMRC

  " autosaves buffer if changed occured
  autocmd InsertLeave,TextChanged * if expand('%') != '' | update | endif

  " only break text if we edit text
  autocmd FileType text setlocal textwidth=78

  " Jump to last cursor position unless it's invalid or in an event handler
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
  
  " Auto-clean fugitive buffers
  autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END

