Plug 'ajmwagar/vim-deus', { 'on': 'Colors' }
Plug 'rakr/vim-one'

" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"



" let g:gruvbox_contrast_dark = 'soft'
set termguicolors
set background=dark


augroup  colorscheme_definition
  au VimEnter * colorscheme one| " Must be loaded after plugin
augroup END
