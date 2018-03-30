" check if already loaded
if exists('g:notePlugLoaded')
	finish
endif
let g:notePlugLoaded = 1

" default keymappings
if !hasmapto('<Plug>renameFile')
	nmap <silent> <unique> <leader>n <Plug>renameFile
endif

" map <Plug> to internal function
nnoremap <unique> <script> <Plug>renameFile <SID>renameFile
nnoremap <SID>renameFile :call <SID>renameFileFn()<CR>

" main
function! s:renameFileFn()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

function! ChompedSystem( ... )
    return substitute(call('system', a:000), '\n\+$', '', '')
endfunction

function! s:openNote()
    let hash = ChompedSystem("git rev-list --max-parents=0 HEAD")
    let path = "~/iCloud/.notes/" 
    let note_path = path . hash . ".txt"
    execute "sp " . note_path
endfunction

