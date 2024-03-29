set history=500                   " Store lots of :cmdline history
set title                         " change the terminal's title
set splitbelow                    " Split down not up
set cmdheight=2                   " Command line supports 2 lines
set conceallevel=2                " Enable conceals for dirvish and more
set exrc                          " Allow using local vimrc
set secure                        " Forbid autocmd in local vimrc
set grepprg=rg\ --vimgrep         " Use ripgrep for grepping

set clipboard=unnamed,unnamedplus " Paste and yank always use system board
set noswapfile                    " Disable using *.swp
set diffopt=filler,vertical       " default behavior for diff
set noequalalways                 " Don't equalize windows when I change a window
set path=$PWD/**                  " Add all folders in root to path
set showtabline=2                 " Always show tabline
set laststatus=2                  " Always show statusline
set mouse=a                       " en/disable mouse for everything
set autoread                      " Always read from a file when it has been changed externally
set directory=~/.vimtmp           " Create global swp file in .vimtmp
set confirm                       " Failed commands will ask permission occasionally

set hidden                        " Hide buffers instead of deleting
set colorcolumn=80                " Highlight column
set winheight=10                  " Minimum height for focused window
set warn                          " Issue a warning when running a shell command with unsaved changes

" Ex commands
set wildmode=full                 " Show a list and then the actual completion in wildmenu
set showcmd                       " Always show current command
set timeoutlen=1000 ttimeoutlen=0 " Reduce Command timeout for faster escape and O
set wildmenu                      " Enable wildmenu command completion
set wildchar=<Tab>                " Use tab to run completion commands


" Use these characters to mimic hidden characters
set list " Show hidden chars
set listchars=\
      \tab:•·,
      \trail:·,
      \extends:❯,
      \precedes:❮,
      \nbsp:×


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
set foldmethod=indent " Always fold on indents, syntax is too heavy


" Search
set hlsearch           " Show highlights for search words
set incsearch          " Show matches as they're typed
set inccommand=nosplit " Interactively show :%s/replace/method
set ignorecase         " Ignore letter case
set smartcase          " Ovveride ignore case when capitals are present
set gdefault           " Search / Substitution commands no longer need 'g'


" Cursor
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set cursorline       " Highlight current line
set scrolloff=999    " Keep cursor in middle of screen
set sidescrolloff=15 " Keep window with cursor at least this far from top/bottom
set sidescroll=5     " Keep window with cursor at least this far from the sides
set winwidth=40      " Minimum width for focused window


" Use system clipboard
set clipboard=unnamed

" Round indents to multiple of shiftwidth (2, 4, 6 never 5, 3 or 1)
set shiftround
