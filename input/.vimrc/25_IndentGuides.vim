Plug 'nathanaelkane/vim-indent-guides'


" Unimpaired style toggle
nnoremap <silent> yoig :IndentGuidesToggle<CR>


let g:indent_guides_default_mapping = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_exclude_filetypes = ['help', 'startify', 'man', 'rogue']
