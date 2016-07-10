" check if already loaded
if exists('g:StripTrailingWhitespacesLoaded')
	finish
endif
let g:StripTrailingWhitespacesLoaded = 1

" main
function! s:stripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")

  %s/\s\+$//e
  
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" default keymappings
nnoremap <silent> <unique> <leader>w :call <SID>stripTrailingWhitespaces() <CR>

" THIS REMOVES ALL TRAILING WHITESPACES ON WRITEBUFFER/SAVE
augroup stripTrailingWhitespacesPluginDetect
  autocmd!
  autocmd FileType c,cpp,java,php,ruby,python,javascript autocmd BufWritePre <buffer> :call <SID>stripTrailingWhitespaces()
augroup END
