Plug 'tpope/vim-fugitive'                          " The king of all git plugins
Plug 'tpope/vim-rhubarb'                           " Github helper for Gbrowse with fugitive
Plug 'sodapopcan/vim-twiggy', { 'on': ['Twiggy'] } " Git branch fugitive plugin for easy tracking
Plug 'gregsexton/gitv', {'on': ['Gitv']}           " View fugitive diffs based on log for individual files or whole project
Plug 'jreybert/vimagit', { 'on': ['Magit'] }       " Interactive staging


" Branch
nnoremap <leader>gb :Twiggy<CR>|    " (br)anch

" Commit
nnoremap <leader>gc :!git commit -m ''<Left>

" Commit browser
nnoremap <leader>gl :Gitv!<CR>
nnoremap <leader>gL :Gitv<CR>

" Add folder / File or interactive staging
nnoremap <leader>ga :Magit<CR>
nnoremap <leader>gA :!git add %<CR>| ":Dispatch! git add %:p<CR>

nnoremap <leader>gs :Gstatus<CR>

nnoremap <leader>gd :Gvdiff<CR>

nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

xnoremap dp :diffput<CR>
xnoremap do :diffget<cr>

" FZF Required, I'm trialing Gitv instead currently
" nnoremap <silent><leader>gs :GFiles?<CR>| " Search changed files by git Status
" nnoremap <silent><leader>gl :Commits<CR>| " Search all commits
" nnoremap <silent><leader>gL :BCommits<CR>| " Search current file commits


augroup  fugitive_buffers
  " Map .. to go up in trees and blobs
  autocmd User fugitive
        \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
        \   nnoremap <buffer> .. :edit %:h<CR> |
        \ endif

  " Delete fugitive buffers
  autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END

