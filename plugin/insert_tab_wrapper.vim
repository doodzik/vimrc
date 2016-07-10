" check if already loaded
if exists('g:InsertTabWrapperLoaded')
	finish
endif
let g:InsertTabWrapperLoaded = 1

" Indent if we're at the beginning of a line. Else, do completion.
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

" Indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

