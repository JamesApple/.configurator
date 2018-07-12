
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_hl_headers = 1
let g:vimwiki_list = [{
      \'path': '~/library/Mobile Documents/com~apple~CloudDocs/notes/', 
      \'path_html':'~/library/Mobile Documents/com~apple~CloudDocs/notes_html/',
      \'auto_toc': 1,
      \'auto_export': 1
      \ }]

" For clarity, in your .vimrc file you can define wiki options using separate
" |Dictionary| variables and subsequently compose them into |g:vimwiki_list|. >
"     let wiki_1 = {}
"     let wiki_1.path = '~/my_docs/'
"     let wiki_1.html_template = '~/public_html/template.tpl'
"     let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

"     let wiki_2 = {}
"     let wiki_2.path = '~/project_docs/'
"     let wiki_2.index = 'main'

"     let g:vimwiki_list = [wiki_1, wiki_2]
