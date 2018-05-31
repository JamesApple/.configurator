" set modifiable
" If you want to learn more about these settings, type :h <OPTION NAME>

if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

" Window / Pane
set noequalalways

" File Navigation
set path=$PWD/**

" Navbar
set showtabline=2
set laststatus=2

" Mouse
set mouse=a

" Buffers
set hidden
set autoread
set noswapfile
set directory=~/.vimtmp
set confirm

" Commands / Hotkeys
set showcmd
set notimeout ttimeout ttimeoutlen=100
set wildchar=<Tab> wildmenu wildmode=full

" Misc

" Display
set nowrap
set list
set listchars=tab:>-,trail:•,extends:>


" Themeing
syntax enable
set ruler
set number
set visualbell
set background=dark
colorscheme solarized
color solarized
highlight clear SignColumn

" Folding
set foldopen=undo,tag,insert,jump,mark,percent,search
set foldmethod=indent

" Search
set hlsearch
set incsearch
set ignorecase

" Cursors
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Use system clipboard
set clipboard=unnamed

" Indents
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

" Completion
set complete=.,w,b,u,t,i
set omnifunc=syntaxcomplete#Complete

" Let delete any character
set backspace=indent,eol,start

