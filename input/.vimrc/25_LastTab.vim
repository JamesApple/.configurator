" Double tap <C-w> to go to last tab
if !exists('g:lasttab')
  let g:lasttab = 1
endif
nnoremap <silent> <C-w><C-w> :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" More natural mappings than 1gt.
" I prefer these as Tmux uses the same style of bindings
nnoremap <silent> <C-w>9 :tabn 9<CR>
nnoremap <silent> <C-w>8 :tabn 8<CR>
nnoremap <silent> <C-w>7 :tabn 7<CR>
nnoremap <silent> <C-w>6 :tabn 6<CR>
nnoremap <silent> <C-w>5 :tabn 5<CR>
nnoremap <silent> <C-w>4 :tabn 4<CR>
nnoremap <silent> <C-w>3 :tabn 3<CR>
nnoremap <silent> <C-w>2 :tabn 2<CR>
nnoremap <silent> <C-w>1 :tabn 1<CR>
