"
                                  " Misc
set clipboard=unnamed,unnamedplus " Paste and yank always use system board
set noswapfile                    " Disable using *.swp
set diffopt=filler,vertical       " default behavior for diff
set noequalalways                 " Don't equalize windows when I change a window
set path=$PWD/**                  " Add all folders in root to path
set showtabline=2                 " Always show tabline
set laststatus=2                  " Always show statusline
set mouse=                        " Disable mouse for everything
set autoread                      " Always read from a file when it has been changed externally
set directory=~/.vimtmp           " Create global swp file in .vimtmp
set confirm                       " Failed commands will ask permission occasionally

set hidden                        " Hide buffers instead of deleting
set winwidth=40                   " Minimum width for focused window
set colorcolumn=110               " Highlight column
set winheight=10                  " Minimum height for focused window
set warn                          " Issue a warning when running a shell command with unsaved changes

" Ex commands
" Show a list and then the actual completion in wildmenu
set wildmode=
      \list:longest,
      \full
set showcmd        " Always show current command
set notimeout      " Disable command timeouts
set wildmenu       " Enable wildmenu command completion
set wildchar=<Tab> " Use tab to run completion commands


" Hidden Characters
hi Whitespace   guifg=purple
" Use these characters to mimic hidden characters
set listchars=\
      \tab:•·,
      \trail:·,
      \extends:❯,
      \precedes:❮,
      \nbsp:×
set list       " Show hidden chars


" Misc Visual
set visualbell " Don't ding the bell
set nowrap     " Disable wrapping by default
set number     " Display line numbers
set lazyredraw " Speed up on larger files


" Folding
" Only open folds intentionally
set foldopen=
      \undo,
      \tag,
      \insert,
      \jump,
      \mark,
      \percent,
      \search
set foldmethod=indent " Always fold on indents


" Search
set hlsearch   " Show highlights for search words
set incsearch  " Show matches as they're typed
set ignorecase " Ignore letter case
set smartcase  " Ovveride ignore case when capitals are present
set gdefault   " Search / Substitution commands no longer need 'g'


" Cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set cursorline          " Highlight current line
" set virtualedit=onemore " Allow cursor to move just past the end of a line
set scrolloff=999       " Keep cursor in middle of screen


" Use system clipboard
set clipboard=unnamed


" Indents
set expandtab     " Replace tab with spaces
set shiftwidth=2  " Indent size for << and >>
set softtabstop=2 " Remove tab symbols as if they were spaces
set autoindent
set smartindent   " Automagically add smart indents after a break


" Completion
set complete=.,w,b,u,t
set omnifunc=syntaxcomplete#Complete
