Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'Alok/notational-fzf-vim'


nnoremap <leader>? :NV<CR>


set conceallevel=2
let g:vim_markdown_fenced_languages = ['csharp=cs', 'javascript=js', 'ruby=rb']

let g:nv_search_paths = ['~/library/Mobile Documents/com~apple~CloudDocs/notes', './docs/', './README.md']
let g:nv_default_extension = '.md'
let g:nv_ignore_pattern = ['summarize-*', 'misc*']
let g:nv_use_short_pathnames = 1
let g:nv_show_preview = 1
let g:nv_wrap_preview_text = 1
let g:nv_preview_width = 50
let g:nv_preview_direction = 'right'
let g:nv_create_note_window = 'vertical split'
let g:nv_create_note_key = 'ctrl-x'
let g:nv_keymap = {
      \ 'ctrl-s': 'split ',
      \ 'ctrl-v': 'vertical split ',
      \ 'ctrl-t': 'tabedit ',
      \ }
