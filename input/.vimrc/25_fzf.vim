Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Executable
Plug 'junegunn/fzf.vim'                                           " Mappings

" Add FZF executable to runtime
set rtp+=/usr/local/opt/fzf

nnoremap <silent><leader>sf :FZF<CR>     | " (s)earch (f)iles in repo
nnoremap <silent><leader>sb :Buffers<CR> | " (s)earch (b)uffers
nnoremap <silent><leader>sh :History<CR> | " (s)earch (h)istory
nnoremap <silent><leader>st :Rg<CR>      | " (s)earch (t)ext
nnoremap <leader>sT :Rg                  | " (s)earch (T)ext with regex

" Exit fzf with escape
autocmd! FileType fzf tnoremap <buffer> <Esc> <c-c>

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob  "!.git/"'                               " Default to fiels
let g:fzf_buffers_jump = 1                                                                               " Jump to window with buffer if it exists
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"' " Nice commit log
let g:fzf_nvim_statusline = 0                                                                            " disable statusline overwriting
let g:fzf_history_dir = '~/.local/share/fzf-history'                                                     " Keep history
" Splits like Ctrlp
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
" Preview with coderay or just cat
let g:fzf_files_options =
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'


" Enable preview in :Files
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
" Custom Ripgrep implementation
command! -bang -nargs=* Rg 
  \ call fzf#vim#grep(
  \   'rg --glob "!.git/*" --column --follow --hidden --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>, 1),
  \   0,
  \   fzf#vim#with_preview('right:40%', '?'),
  \   1)

