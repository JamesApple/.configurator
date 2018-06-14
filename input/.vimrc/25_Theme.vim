Plug 'ajmwagar/vim-deus'


set t_Co=256
set termguicolors
set background=dark
let g:deus_termcolors=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"


augroup  colorscheme_definition
  au VimEnter * colorscheme deus| " Must be loaded after plugin
augroup END
