let g:gitgutter_map_keys = 0
let g:gitgutter_max_signs = 200
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_sign_removed = '–'
let g:gitgutter_diff_args = '--ignore-space-at-eol'
nmap <silent> ]h :GitGutterNextHunk<CR>
nmap <silent> [h :GitGutterPrevHunk<CR>
nnoremap <silent> <Leader>gu :GitGutterRevertHunk<CR>
nnoremap <silent> <Leader>gp :GitGutterPreviewHunk<CR><c-w>j
nnoremap cog :GitGutterToggle<CR>
nnoremap <Leader>gt :GitGutterAll<CR>
