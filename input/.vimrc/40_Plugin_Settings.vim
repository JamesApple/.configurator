" You complete me
" Start autocompletion after 4 chars
let g:ycm_max_num_candidates = 5
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_enable_diagnostic_highlighting = 0
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_key_list_stop_completion = ['<C-y>']

" Lightline
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ 
      \     [ 'mode', 'paste' ],
      \     ['buffers'] 
      \   ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers',
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel',
      \ },
      \ }
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
" Snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
let g:UltiSnipsEditSplit="vertical"
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

" Javascript Libraries
let g:used_javascript_libs = 'underscore,vue,jquery'

" Undotree
let g:undotree_ShortIndicators = 1

" Neovim Terminal
if has('nvim')
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
endif

" Ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '!'
let g:ale_sign_warning = '~'
" highlight ALEWarning ctermbg=Green
" Add custom highlights please
let g:ale_set_highlights = 0
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\   'vue': ['eslint'],
\}

" let g:airline#extensions#ale#enabled = 1

" Dirvish
let g:dirvish_mode = ':sort ,^.*[\/],'

" Airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline_powerline_fonts = 1

" Closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_emptyTags_caseSensitive = 1

" Autotag
let g:autotagExcludeSuffixes="tml.xml.text.txt.vim"

" Sneak
let g:sneak#label = 1
autocmd ColorScheme * hi Sneak guifg=black guibg=red ctermfg=black ctermbg=red
autocmd ColorScheme * hi SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" Showmarks
let g:showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY"

let g:ctrlp_by_filename = 0
let g:ctrlp_reuse_window = 'netrw\|dirvish'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:0,max:10,results:50'
let g:ctrlp_tabpage_position = 'al'
let g:ctrlp_lazy_update = 250
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$'
  \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" if executable('ag')
"   let g:ctrlp_user_command =
"         \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
"   let g:ctrlp_use_caching = 0
" else
"   let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
"   let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
" endif




  hi! link txtBold Identifier
  hi! link zshVariableDef Identifier
  hi! link zshFunction Function
  hi! link rubyControl Statement
  hi! link rspecGroupMethods rubyControl
  hi! link rspecMocks Identifier
  hi! link rspecKeywords Identifier
  hi! link rubyLocalVariableOrMethod Normal
  hi! link rubyStringDelimiter Constant
  hi! link rubyString Constant
  hi! link rubyAccess Todo
  hi! link rubySymbol Identifier
  hi! link rubyPseudoVariable Type
  hi! link rubyRailsARAssociationMethod Title
  hi! link rubyRailsARValidationMethod Title
  hi! link rubyRailsMethod Title
  hi! link rubyDoBlock Normal
  hi! link MatchParen DiffText

  hi! link CTagsModule Type
  hi! link CTagsClass Type
  hi! link CTagsMethod Identifier
  hi! link CTagsSingleton Identifier

  hi! link javascriptFuncName Type
  hi! link jsFuncCall jsFuncName
  hi! link javascriptFunction Statement
  hi! link javascriptThis Statement
  hi! link javascriptParens Normal
  hi! link jOperators javascriptStringD
  hi! link jId Title
  hi! link jClass Title

  " Javascript language support
  hi! link javascriptJGlobalMethod Statement

  " Make the braces and other noisy things slightly less noisy
  hi! jsParens guifg=#005F78 cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
  hi! link jsFuncParens jsParens
  hi! link jsFuncBraces jsParens
  hi! link jsBraces jsParens
  hi! link jsParens jsParens
  hi! link jsNoise jsParens

  " hi! link NERDTreeFile Constant
  " hi! link NERDTreeDir Identifier

  hi! link sassMixinName Function
  hi! link sassDefinition Function
  hi! link sassProperty Type
  hi! link htmlTagName Type

  hi! PreProc gui=bold

  " Solarized separators are a little garish.
  " This moves separators, comments, and normal
  " text into the same color family as the background.
  " Using the http://drpeterjones.com/colorcalc/,
  " they are now just differently saturated and
  " valued riffs on the background color, making
  " everything play together just a little more nicely.
  hi! VertSplit guifg=#003745 cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
  hi! LineNR guifg=#004C60 gui=bold guibg=#002B36 ctermfg=146
  hi! link NonText VertSplit
  hi! Normal guifg=#77A5B1
  hi! Constant guifg=#00BCE0
  hi! Comment guifg=#52737B
  hi! link htmlLink Include
  hi! CursorLine cterm=NONE gui=NONE
  hi! Visual ctermbg=233
  hi! Type gui=bold



" via: http://whynotwiki.com/Vim
" Ruby
" Use v or # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" v...s#  Wrap the selection in #{}
let g:surround_113 = "#{\r}"   " v
let g:surround_35  = "#{\r}"   " #

" Select text in an ERb file with visual mode and then press s- or s=
" Or yss- to do entire line.
let g:surround_45 = "<% \r %>"    " -
let g:surround_61 = "<%= \r %>"   " =

