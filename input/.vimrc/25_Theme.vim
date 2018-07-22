Plug 'ajmwagar/vim-deus', { 'on': 'Colors' }
Plug 'rakr/vim-one'

set termguicolors
set background=dark

augroup  colorscheme_definition
  au VimEnter * colorscheme one| " Must be loaded after plugin
augroup END
