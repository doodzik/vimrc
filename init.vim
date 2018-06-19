set nocompatible

set shell=/bin/zsh
set guifont=Menlo:h14
set encoding=utf-8
scriptencoding utf-8
" let g:indentLine_char = '｜'
" Normally, Vim messes with iskeyword when you open a shell file. This can
" leak out, polluting other file types even after a 'set ft=' change. This
" variable prevents the iskeyword change so it can't hurt anyone.
let g:sh_noisk=1

autocmd!
call pathogen#infect('bundle/{}')

"
" Syntax
"
syntax off
" uses vim-active-numbers = only linenumbers in active window
" sometimes tex files aren't recognized as such
" http://superuser.com/questions/208177/vim-and-tex-filetypes-plaintex-vs-tex
" turns of numbering on filetype
let g:actnum_exclude =
      \ [ 'tex', 'plaintex' ]
set number
set relativenumber
hi LineNr term=NONE " dont underline Linenumber
" remove colors
" set t_Co=256
filetype plugin indent on
set showmatch " move the cursor to the previous matching bracket for half a second, and quickly pressing a key will effectively cancel this animation
set lazyredraw " redraw only when we need to.

highlight LineNr ctermfg=White
highlight CursorLineNr ctermfg=White
highlight NonText ctermfg=White

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

"
" Display
"
set vb t_vb= " disable bell

"
" Keyboard
"
set ttyfast
set timeoutlen=300 " mapping delay
set ttimeoutlen=0  " key code delay

"
" Indention
"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"
" Search
"
set incsearch            " find the next match as we type the search
set hlsearch             " hilight searches by default
set ignorecase smartcase " make searches case-sensitive only if they contain upper-case characters
set gdefault             " make g the default subsitution flag
let g:sneak#label = 1    " sneak.vim highlight results

" add fzf
set rtp+=/usr/local/opt/fzf
" add note
set rtp+=/usr/local/opt/note

" Dont let commandT change search dir automatically
" for rootignore
let g:CommandTTraverseSCM = 'pwd'
let g:RootIgnoreUseHome = 0

"
" Lining
"
set cursorline
set scrolloff=9999     " vertical/horizontal scroll off settings to be in the middle
set sidescrolloff=7
set sidescroll=1
set wrap            " dont wrap lines
set linebreak       " wrap lines at convenient points

"
" History
"
set history=10000
set modeline      " Modelines (comments that set vim options on a per-file basis)
set modelines=3
set nobackup      " Don't make backups at all
set undofile      " lets you undo from before file was opend
set undodir=~/.vim/undodir
set noswapfile    " because I am writing on all changes it is disabled
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set autoread " If a file is changed outside of vim, automatically reload it without asking

"
" Status & Cmd's
"
set showcmd      " show incomplete cmds down the bottom
set showmode     " show current mode down the bottom
set laststatus=2 " always display status bar
set cmdheight=1  " Avoiding the 'Hit ENTER to continue' prompts

set statusline+=%f
set statusline+=%#warningmsg#
set statusline+=%*

"
" ale lint
"

" Put this in vimrc or a plugin file of your own.
" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" Enable completion where available.
let g:ale_completion_enabled = 1

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

"
" Altered Format Behaviour of Cmd
"
set nojoinspaces
set backspace=indent,eol,start

"
" Command Line Completion
"
set wildmode=list:longest,list:full " make cmdline tab completion similar to bash
set wildmenu                        " enable ctrl-n and ctrl-p to scroll thru matches
" stuff to ignore when tab completing
set wildignore+=*.a,*.obj,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp
set complete+=k             " add dictionary scanning
set omnifunc=syntaxcomplete#Complete
set completeopt+=longest,menuone,preview

"
" Buffer
"
set switchbuf=useopen
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

"
" Folding
"
" Turn folding off for real, hopefully
set foldmethod=manual
set nofoldenable

"
" Register
"
set clipboard=unnamed " use clipboard as the default register

"
" Movement
"
" move down a row (rendered) instead of an actual line
nmap j gj
nmap k gk

