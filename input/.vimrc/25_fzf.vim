Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
set rtp+=/usr/local/opt/fzf


nnoremap <silent><leader>gs :GFiles?<CR>| " Search changed files by git Status
nnoremap <silent><leader>gl :Commits<CR>| " Search all commits
nnoremap <silent><leader>gL :BCommits<CR>| " Search current file commits

nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
nnoremap <silent><leader>sf :GFiles<CR>| " (s)earch (f)iles in repo
nnoremap <silent><leader>sb :Buffers<CR>| " (s)earch (b)uffers
nnoremap <silent><leader>sh :History<CR>| " (s)earch (h)istory
nnoremap <silent><leader>st :Tags<CR>| " (s)earch all (t)ags
nnoremap <silent><leader>gr :Ag<CR>| " (gr)ep all text in root directory

" nnoremap <silent> <leader>st :Filetypes<CR>| " (s)elect (f)ile(t)ype

vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>| " (K)all search
nnoremap <silent> K :call SearchWordWithAg()<CR>| " (K)all search

" Search mappings for current mode
nmap <leader>sm <plug>(fzf-maps-n)
xmap <leader>sm <plug>(fzf-maps-x)
omap <leader>sm <plug>(fzf-maps-o)

autocmd! FileType fzf tnoremap <buffer> <Esc> <c-c>| " Exit fzf with escape


let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_nvim_statusline = 0 " disable statusline overwriting


" Ag preview with `?` mapped as preview window
command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>,
      \                 <bang>0 ? fzf#vim#with_preview('up:60%')
      \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
      \                 <bang>0)

" Search current word under cursor
function! SearchWordWithAg()
  execute 'Ag' expand('<cword>')
endfunction

" Search visual with Ag
function! SearchVisualSelectionWithAg() range
  let old_reg = getreg('"')
  let old_regtype = getregtype('"')
  let old_clipboard = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', old_reg, old_regtype)
  let &clipboard = old_clipboard
  execute 'Ag' selection
endfunction
