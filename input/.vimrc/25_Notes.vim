Plug 'plasticboy/vim-markdown'

let g:cronos_path = '~/cronos/'
let g:cronos_diary_path = g:cronos_path.'diary/'
let g:cronos_diary_entry_filename = g:cronos_diary_path.'entries.md'

function! EditDiaryEntryForHumanTime(base_date_string)
  let date = input('Entry for: ', a:base_date_string)
  let formattedDateCommand = 'gdate --date='.date.' +"%y-%m-%d-%A"'
  let dateOrError = systemlist(formattedDateCommand)[0]

  if v:shell_error
    echo "Could not understand date => ".dateOrError
  else
    let filename = dateOrError.'.md'
    let dateAsMarkdownLink = '['.dateOrError.']('.dateOrError.')'
    let writeIndexLinkToEntriesFileCommand = 'if ! grep "'.dateOrError.'" '.g:cronos_diary_entry_filename.'; then echo "'.dateAsMarkdownLink.'" >> '.g:cronos_diary_entry_filename.'; fi'
    call system(writeIndexLinkToEntriesFileCommand)
    let diaryEntryPath = g:cronos_diary_path.filename
    execute 'edit '.diaryEntryPath
    execute 'nnoremap <buffer> - :edit '.g:cronos_diary_entry_filename.'<CR>'
    " nnoremap <buffer> - :edit expand('%:p:h').'/entries.md'<CR>
  end
endfunction

function! OpenCronos()
  execute 'tabedit '.g:cronos_path.'index.md'
endfunction

function! SearchCronos()
  Files g:cronos_path
endfunction


nnoremap <silent> <leader>dd :call OpenCronos()<CR>
nnoremap <silent> <leader>sd :Files ~/cronos/<CR>
nnoremap <leader>dt :call EditDiaryEntryForHumanTime('today')<CR>
nnoremap <leader>dy :call EditDiaryEntryForHumanTime('yesterday')<CR>

autocmd FileType markdown nmap <buffer> gf ge

let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1

let g:vim_markdown_fenced_languages = [ 'csharp=cs', 'js=javascript' ]

