set clipboard=unnamed,unnamedplus
set noswapfile              " Disable using *.swp
set diffopt=filler,vertical " default behavior for diff
set noequalalways           " Don't equalize windows when I change a window
set path=$PWD/**            " Add all folders in root to path
set showtabline=2           " Always show tabline
set laststatus=2            " Always show statusline
set mouse=                  " Disable mouse for everything
set hidden                  " Hide buffers instead of deleting
set autoread                " Always read from a file when it has been changed externally
set directory=~/.vimtmp     " Create global swp file in .vimtmp
set confirm                 " Failed commands will ask permission occasionally

" Ex commands
set showcmd        " Always show current command
set notimeout      " Disable command timeouts
set wildmenu       " Enable wildmenu command completion
set wildchar=<Tab> " Use tab to run completion commands
set wildmode=      " Show a list and then the actual completion in wildmenu
      \list:longest,
      \full

" Hidden Characters
set list       " Show hidden chars
set listchars= " Use these characters to mimic hidden characters
  \tab:•·,     
  \trail:·,
  \extends:❯,
  \precedes:❮,
  \nbsp:× 

" Themeing
syntax enable
set visualbell
set background=dark
colorscheme solarized
color solarized
highlight clear SignColumn
set nowrap     " Disable wrapping by default
set number     " Display line numbers
set lazyredraw " Speed up on larger files

" Folding
set foldopen=undo,tag,insert,jump,mark,percent,search " Only open folds intentionally
set foldmethod=indent                                 " Always fold on indents

" Search
set hlsearch   " Show highlights for search words
set incsearch  " Show matches as they're typed
set ignorecase " Ignore letter case
set smartcase  " Ovveride ignore case when capitals are present
set gdefault   " Search / Substitution commands no longer need 'g'

" Cursors
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set cursorline          " Highlight current line
set colorcolumn=80      " Highlight column
set virtualedit=onemore " Allow cursor to move just past the end of a line
set scrolloff=999       " Keep cursor in middle of screen

" Use system clipboard
set clipboard=unnamed

" Indents
set expandtab     " Replace tab with spaces
set shiftwidth=2  " Indent size for << and >>
set softtabstop=2 " Remove tab symbols as if they were spaces
set smartindent   " Automagically add smart indents after a break

" Completion
set complete=.,w,b,u,t
set omnifunc=syntaxcomplete#Complete

" Let delete any character
set backspace=indent,eol,start

