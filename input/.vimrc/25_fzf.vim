Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
set rtp+=/usr/local/opt/fzf


" nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
" nnoremap <silent><leader>sf :GFiles<CR>| " (s)earch (f)iles in repo
nnoremap <silent><leader>sf :FZF<CR>| " (s)earch (f)iles in repo

nnoremap <silent><leader>sb :Buffers<CR>| " (s)earch (b)uffers
nnoremap <silent><leader>sh :History<CR>| " (s)earch (h)istory
" nnoremap <silent><leader>st :Tags<CR>| " (s)earch all (t)ags
nnoremap <silent><leader>st :Rg<CR>| " (gr)ep all text in root directory
" nnoremap <silent><leader>st :Rg<CR>| " (gr)ep all text in root directory


" vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>| " (K)all search
" nnoremap <silent> K :call SearchWordWithAg()<CR>| " (K)all search

" Search mappings for current mode
nmap <leader><Tab> <plug>(fzf-maps-n)
xmap <leader><Tab> <plug>(fzf-maps-x)
omap <leader><Tab> <plug>(fzf-maps-o)
imap <c-x><Tab> <plug>(fzf-maps-i)

autocmd! FileType fzf tnoremap <buffer> <Esc> <c-c>| " Exit fzf with escape

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob  "!.git/"'
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_nvim_statusline = 0 " disable statusline overwriting

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


" Ag preview with `?` mapped as preview window
command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>,
      \                 <bang>0 ? fzf#vim#with_preview('up:60%')
      \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
      \                 <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --follow --hidden --line-number --hidden --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

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
