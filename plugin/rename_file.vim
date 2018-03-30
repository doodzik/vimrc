" check if already loaded
if exists('g:renameFilePlugLoaded')
	finish
endif
let g:renameFilePlugLoaded = 1

" default keymappings
if !hasmapto('<Plug>openNote')
	nmap <silent> <unique> gn <Plug>openNote
endif

" map <Plug> to internal function
nnoremap <unique> <script> <Plug>openNote <SID>openNote
nnoremap <SID>openNote :call <SID>openNoteFn()<CR>

" https://vi.stackexchange.com/a/2868
function! ChompedSystem( ... )
    return substitute(call('system', a:000), '\n\+$', '', '')
endfunction

" main
function! s:openNoteFn()
    let hash = ChompedSystem("git rev-list --max-parents=0 HEAD")
    let path = "~/iCloud/.notes/" 
    let note_path = path . hash . ".txt"
    execute "sp " . note_path
endfunction

