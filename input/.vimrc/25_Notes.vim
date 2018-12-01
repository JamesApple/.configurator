
" General Markdown Settings:
Plug 'plasticboy/vim-markdown', { 'for': ['markdown'] }
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_fenced_languages = [ 'csharp=cs', 'js=javascript' ]


augroup MarkdownFTOptions
  autocmd!
  " Allow following links with gf/gx instead of ge
  autocmd FileType markdown nmap <buffer> gf ge
  " Spelling mistake detection
  autocmd FileType markdown setlocal spell spelllang=en_us

  " Enable soft wrapping
  autocmd Filetype markdown setlocal wrap textwidth=0 linebreak foldlevel=2
  autocmd Filetype markdown
        \ nnoremap j gj|
        \ | nnoremap k gk|
        \ | inoremap <Down> <C-o>gj|
        \ | inoremap <Up> <C-o>gk|

augroup END


" Notes:
let g:notes_path = '~/notes/'
" <leader>? Opens notes
execute 'nnoremap <silent> <leader>? :edit '.g:notes_path.'index.md<CR>G'
" <leader>s? Search notes
execute 'nnoremap <silent> <leader>s? :Files '.g:notes_path.'<CR>'


" Diary:
function! EditDiaryEntryForHumanTime(base_date_string)
  let date = input('Entry for: ', a:base_date_string)
  let formattedDateCommand = 'gdate --date='.date.' +"%y-%m-%d-%A"'
  let dateOrError = systemlist(formattedDateCommand)[0]

  if v:shell_error
    echo "Could not understand date => ".dateOrError
  else
    let filename = dateOrError.'.md'
    let dateAsMarkdownLink = '['.dateOrError.']('.dateOrError.')'
    let writeIndexLinkToEntriesFileCommand = 'if ! grep "'.dateOrError.'" '.g:diary_index_file.'; then echo "'.dateAsMarkdownLink.'" >> '.g:diary_index_file.'; fi'
    call system(writeIndexLinkToEntriesFileCommand)
    let diaryEntryPath = g:diary_path.filename
    execute 'edit '.diaryEntryPath
    execute 'nnoremap <buffer> - :edit '.g:diary_index_file.'<CR>'
    " nnoremap <buffer> - :edit expand('%:p:h').'/entries.md'<CR>
  end
endfunction
let g:diary_path = g:notes_path.'diary/'
let g:diary_index_file = g:diary_path.'entries.md'
nnoremap <leader>d :call EditDiaryEntryForHumanTime('today')<CR>

