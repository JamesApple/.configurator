Plug 'mkarmona/materialbox', { 'on': 'Colors' }
Plug 'mkarmona/colorsbox',   { 'on': 'Colors' }
Plug 'ajmwagar/vim-deus',    { 'on': 'Colors' } " For when I'm tired of One dark
Plug 'rakr/vim-one'                             " For when I'm tired of deus


set termguicolors   " Enable truecolor
set background=dark " Dark by default


" Doesn't work with Fira but I leave to keep the faith
highlight Comment cterm=italic
highlight vimComment cterm=italic
" Hidden Characters
highlight Whitespace   guifg=purple

" Set 
augroup  colorscheme_definition
  autocmd!
  au VimEnter * colorscheme one| " Must be loaded after plugin
augroup END
