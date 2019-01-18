Plug 'tpope/vim-dadbod' " Execute arbitrary SQL

" Make this not directly reference the db
vnoremap db :DB postgresql:platform_development<CR>
nnoremap db :DB postgresql:platform_development<CR>
