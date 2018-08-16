Plug 'ajmwagar/vim-deus', { 'on': 'Colors' } " For when I'm tired of One dark
Plug 'rakr/vim-one'                          " For when I'm tired of deus

set termguicolors
set background=dark

augroup  colorscheme_definition
  au VimEnter * colorscheme one| " Must be loaded after plugin
augroup END
