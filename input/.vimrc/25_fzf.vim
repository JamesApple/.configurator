Plugin 'junegunn/fzf.vim'
set rtp+=/usr/local/opt/fzf

" Ag preview with `?` mapped as preview window
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)


autocmd! FileType fzf tnoremap <buffer> <Esc> <c-c>| " Exit fzf with escape

" Settings
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'

nnoremap <silent><leader>sf :GFiles<CR>| " Search files in repo
nnoremap <silent><leader>gs :GFiles?<CR>| " Search changed files by git Status
nnoremap <silent><leader>sb :Buffers<CR>| " Search buffers
nnoremap <silent><leader>sb :History<CR>| " Search history
nnoremap <silent><leader>gr :Ag<CR>| " Search all text in root directory
nnoremap <silent><leader>st :Tags<CR>| " Search all tags


" View mappings for current mode
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

imap <c-x><c-f> <plug>(fzf-complete-path)| " Use fzf path completion
