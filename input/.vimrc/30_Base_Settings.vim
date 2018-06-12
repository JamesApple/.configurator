set clipboard=unnamed,unnamedplus
set ruler 
set number " Display line numbers
set noswapfile " Disable using *.swp

set diffopt=filler,vertical " default behavior for diff

set noequalalways "
set virtualedit=onemore " Allow cursor to move just past the end of a line
set path=$PWD/** " Add all folders in root to path
set scrolloff=999 " Keep cursor in middle of screen

set showtabline=2  " Always show tabline
set laststatus=2  " Always show statusline

set mouse= " Disable mouse for everything

set autoread
set directory=~/.vimtmp
set confirm
set hidden " Hide buffers instead of deleting

" Commands / Hotkeys
set showcmd " Always show current command
set notimeout 
set ttimeout 
set ttimeoutlen=100
set wildmenu
set wildchar=<Tab>
set wildmode=
      \list:longest,
      \full

set nowrap     " Disable wrapping by default
set list       " Show hidden chars
set listchars=
  \tab:•·,     " Use these characters to mimic hidden characters
  \trail:·,
  \extends:❯,
  \precedes:❮,
  \nbsp:× 
set lazyredraw " Speed up on larger files


" Themeing
syntax enable
set visualbell
set background=dark
colorscheme solarized
color solarized
highlight clear SignColumn

" Folding
set foldopen=undo,tag,insert,jump,mark,percent,search " Only open folds intentionally
set foldmethod=indent                                 " Always fold on indents

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
set expandtab " Replace tab with spaces
set shiftwidth=2 " Indent size for << and >>
set softtabstop=2 " Remove tab symbols as if they were spaces
set smartindent " Automagically add smart indents after a break

" Completion
set complete=.,w,b,u,t
set omnifunc=syntaxcomplete#Complete

" Let delete any character
set backspace=indent,eol,start

