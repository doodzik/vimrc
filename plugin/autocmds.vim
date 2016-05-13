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

  autocmd FileType text setlocal textwidth=78
  " Jump to last cursor position unless it's invalid or in an event handler
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Leave the return key alone when in command line windows, since it's used
  " to run commands there.
  autocmd! CmdwinEnter * :unmap <cr>
  autocmd! CmdwinLeave * :call MapCR()

  autocmd FileType c,cpp,java,php,ruby,python,javascript autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
augroup END
