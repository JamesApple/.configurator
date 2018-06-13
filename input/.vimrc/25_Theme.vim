Plug 'ajmwagar/vim-deus'

augroup  colorscheme_definition
  au VimEnter * colorscheme deus| " Must be loaded after plugin
augroup END

set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark 
let g:deus_termcolors=256
