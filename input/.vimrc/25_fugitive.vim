Plugin 'tpope/vim-fugitive'

nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gm :Gmerge
nnoremap <leader>gf :Gfetch
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gd :Gvdiff
nnoremap <leader>gb :Gblame<CR>


" The tree buffer makes it easy to drill down through the directories of your
" git repository, but it’s not obvious how you could go up a level to the
" parent directory. Here’s a mapping of .. to the above command, but
" only for buffers containing a git blob or tree
autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif

autocmd BufReadPost fugitive://* set bufhidden=delete| " Delete fugitive buffers

