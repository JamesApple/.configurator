" http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  let l:gitstatuses = join(GitGutterGetHunkSummary(), ', ')
  return strlen(l:branchname) > 0?'  '.l:branchname.' '.l:gitstatuses.' ':''
  " let l:gitstatus = join(GitGutterGetHunkSummary(), ',')
  " return fugitive#statusline()
endfunction


set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
