set history=500           " Store lots of :cmdline history
set title                 " change the terminal's title
set splitbelow
set cmdheight=2
set conceallevel=2
set exrc                  " Allow using local vimrc
set secure                " Forbid autocmd in local vimrc
set grepprg=rg\ --vimgrep " Use ripgrep for grepping

" Misc
set clipboard=unnamed,unnamedplus " Paste and yank always use system board
set noswapfile                    " Disable using *.swp
set diffopt=filler,vertical       " default behavior for diff
set noequalalways                 " Don't equalize windows when I change a window
set path=$PWD/**                  " Add all folders in root to path
set showtabline=2                 " Always show tabline
set laststatus=2                  " Always show statusline
set mouse=a                        " en/disable mouse for everything
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
set wildmode=full
set showcmd        " Always show current command
" set notimeout      " Disable command timeouts
set timeoutlen=1000 ttimeoutlen=0                                               "Reduce Command timeout for faster escape and O
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
set foldmethod=indent " Always fold on indents, syntax is too heavy


" Search
set hlsearch   " Show highlights for search words
set incsearch  " Show matches as they're typed
set inccommand=nosplit " Interactively show :%s/replace/method
set ignorecase " Ignore letter case
set smartcase  " Ovveride ignore case when capitals are present
set gdefault   " Search / Substitution commands no longer need 'g'


" Cursor
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set cursorline          " Highlight current line
" set virtualedit=onemore " Allow cursor to move just past the end of a line
set scrolloff=999       " Keep cursor in middle of screen
set sidescrolloff=15
set sidescroll=5


" Use system clipboard
set clipboard=unnamed


" Indents
set expandtab     " Replace tab with spaces
set shiftwidth=2  " Indent size for << and >>
set softtabstop=2 " Remove tab symbols as if they were spaces
set autoindent
set smartindent   " Automagically add smart indents after a break

augroup vimrc
  autocmd!
  autocmd FocusGained,BufEnter * checktime " Refresh file when vim gets focus
augroup END

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

highlight Comment cterm=italic
highlight vimComment cterm=italic

