Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Ultimate search plugin
Plug 'junegunn/fzf.vim'                                           " Same
set rtp+=/usr/local/opt/fzf


nnoremap <silent><leader>sf :FZF<CR>| " (s)earch (f)iles in repo

nnoremap <silent><leader>sb :Buffers<CR>| " (s)earch (b)uffers
nnoremap <silent><leader>sh :History<CR>| " (s)earch (h)istory
nnoremap <silent><leader>st :Rg<CR>| " (s)earch (t)ext
nnoremap <leader>sT :Rg | " (s)earch (T)ext with regex


"  Search mappings for current mode
" nmap <C-k> <plug>(fzf-maps-n)
" xmap <C-k> <plug>(fzf-maps-x)
" omap <C-k> <plug>(fzf-maps-o)
" imap <C-k> <plug>(fzf-maps-i)

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_files_options =
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'


autocmd! FileType fzf tnoremap <buffer> <Esc> <c-c>| " Exit fzf with escape

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob  "!.git/"'
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" let g:fzf_tags_command = 'ctags -R'
let g:fzf_nvim_statusline = 0 " disable statusline overwriting
let g:fzf_history_dir = '~/.local/share/fzf-history'
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --glob "!.git/*" --column --follow --hidden --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>, 1),
  \   0,
  \   fzf#vim#with_preview('right:40%', '?'),
  \   1)

