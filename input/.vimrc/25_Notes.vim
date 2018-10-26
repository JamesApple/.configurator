Plug 'plasticboy/vim-markdown'

let g:cronos_path = '~/cronos/'
let g:cronos_diary_path = g:cronos_path.'diary/'
let g:cronos_diary_entry_filename = g:cronos_diary_path.'entries.md'

function! EditDiaryEntryForHumanTime(date_string)
  let formattedDateCommand = 'gdate --date='.a:date_string.' +"%y-%m-%d-%A"'
  let dateOrError = systemlist(formattedDateCommand)[0]

  if v:shell_error
    echo "Could not understand date => ".dateOrError
  else
    let filename = dateOrError.'.md'
    let dateAsMarkdownLink = '['.dateOrError.']('.dateOrError.')'
    let writeIndexLinkToEntriesFileCommand = 'if ! grep "'.dateOrError.'" '.g:cronos_diary_entry_filename.'; then echo "'.dateAsMarkdownLink.'" >> '.g:cronos_diary_entry_filename.'; fi'
    call system(writeIndexLinkToEntriesFileCommand)
    let diaryEntryPath = g:cronos_diary_path.filename
    execute 'tabedit '.g:cronos_diary_entry_filename
    execute 'vsplit '.diaryEntryPath
  end
endfunction

function! OpenCronos()
  execute 'tabedit '.g:cronos_path.'index.md'
endfunction


nnoremap <silent> <leader>?? :call OpenCronos()<CR>
nnoremap <silent> <leader>s? :Files ~/cronos/<CR>
nnoremap <leader>?d :call EditDiaryEntryForHumanTime('')<Left><Left>
nnoremap <leader>?t :call EditDiaryEntryForHumanTime('today')<CR>
nnoremap <leader>?y :call EditDiaryEntryForHumanTime('yesterday')<CR>

autocmd FileType markdown nmap <buffer> gf ge

let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1

let g:vim_markdown_fenced_languages = [ 'csharp=cs' ]
