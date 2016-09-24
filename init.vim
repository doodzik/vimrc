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

let g:syntastic_html_tidy_exec = 'tidy5'

autocmd!
call pathogen#infect('bundle/{}')

"
" Syntax
"
syntax off
" uses vim-active-numbers = only linenumbers in active window
set number
set relativenumber
hi LineNr term=NONE " dont underline Linenumber
set t_Co=0
filetype plugin indent on
set showmatch " move the cursor to the previous matching bracket for half a second, and quickly pressing a key will effectively cancel this animation
set lazyredraw " redraw only when we need to.

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
set noundofile    " lets you undo from before file was opend
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
