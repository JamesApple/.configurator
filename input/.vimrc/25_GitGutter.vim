Plug 'airblade/vim-gitgutter' " Display git status of lines in buffer


nnoremap <silent> <Leader>ghd :GitGutterRevertHunk<CR>
nnoremap <silent> <Leader>gha :GitGutterStageHunk<CR>
nnoremap <silent> <Leader>ghs :GitGutterStageHunk<CR>
nnoremap <silent> <Leader>ghp :GitGutterPreviewHunk<CR><c-w>j
nnoremap yog :GitGutterToggle<CR>| " Unimpaired style toggle


" Disable gitgutter for specified filetypes
let gitgutter_blacklist = ['dirvish', 'fugitive']
augroup gitGutterFiletypeDisabler
  autocmd BufLeave * if index(gitgutter_blacklist, &ft) < 0 | :GitGutterEnable
  autocmd BufEnter */ :GitGutterDisable
augroup END


let g:gitgutter_realtime = 0                        " Realtime breaks with Zsh
let g:gitgutter_map_keys = 0                        " No keymaps
let g:gitgutter_max_signs = 200 
let g:gitgutter_eager = 1                           " Load gutter on open
let g:gitgutter_sign_removed = '–' 
let g:gitgutter_diff_args = '--ignore-space-at-eol' " Don't show space changes
let g:gitgutter_override_sign_column_highlight = 0
