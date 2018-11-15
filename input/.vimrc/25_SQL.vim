Plug 'tpope/vim-dadbod', { 'on': 'DB' } " Execute arbitrary SQL

" Make this not directly reference the db
vnoremap <leader>db :DB postgresql:platform_development<CR>
nnoremap <leader>db :DB postgresql:platform_development
