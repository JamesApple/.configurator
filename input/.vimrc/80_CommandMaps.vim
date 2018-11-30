" Alias my common mistakes
command! Wq wq
command! WQ wq
command! W w
command! Q q

" FZF NOTE:
" startinsert doesn't work when entering FZF from a function
function! GraphqlDocumentSearch()
  let regex = input('Gimme: ')
  execute 'Rgm graphql`.*'.regex.'.*`'
  call feedkeys('i')
endfunction

function! CallChainSearch()
  let dot_seperated_method_call_regex = '(\(\s*.*\s*\))?\s*\.?'
  let method_list = split(input('Period seperated chain (Role.new): '), '\.')
  execute 'Rgm '.join(method_list, dot_seperated_method_call_regex)
  call feedkeys('i')
endfunction





" Items in this list have an associated command listed above.
let g:command_menu_items = [
      \ 'Graphql Document Search',
      \ 'Call Chain Search'
      \]

function! RunCommandMenuItem(command_name)
  echo a:command_name
  call function(join(split(a:command_name, ' '), '' ) )()
endfunction

command! -bang -nargs=? Cmd
      \ call fzf#run({ 'source': g:command_menu_items, 'sink': function('RunCommandMenuItem')})
