Plug 'Valloric/YouCompleteMe', { 'do': 'pyenv local 2.7.10 && python2 install.py --js-completer --clang-completer ' }


let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_key_invoke_completion = '<c-j>'
let g:ycm_complete_in_strings = 1
hi Pmenu  guibg=#373b48 ctermbg=3 gui=bold| " Highlight omnicomplete
