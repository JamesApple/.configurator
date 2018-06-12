
let mapleader = " "

" Move around windows
nnoremap <C-Tab> <C-w>w
nnoremap <C-S-Tab> <C-w>W

" Backspace to move back in jumps and tab to move forward
nnoremap <Backspace> <C-O>
nnoremap <leader><Backspace> <C-^>

" Replace within block
nnoremap <leader><leader> :'{,'}s/\<<c-r><c-w>\>//g<left><left>
xnoremap <leader><leader> y:'{,'}s/<c-r><c-0>//g<left><left>

" Replace in entire file
nnoremap <leader>s :%s/\<<c-r><c-w>\>//g<left><left>
xnoremap <leader>s y:%s/<c-r><c-0>//g<left><left>

nnoremap <silent><leader> :w<CR>

nnoremap == mzgg=G`z| " Indent entire file

" Fix syntax in long files
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>


" Make C-w the same in insert and normal
inoremap <C-w><Up> <ESC><C-w><Up>
inoremap <C-w><Down> <ESC><C-w><Down>
inoremap <C-w><Right> <ESC><C-w><Right>
inoremap <C-w><Left> <ESC><C-w><Left>

" Custom help page
nnoremap  <leader>? :call ToggleHelp()<CR>
function! ToggleHelp()
  let filename='.vimhelp'
  let currentFilename=expand('%:t')
  if filename == currentFilename
    execute 'w | Bclose'
  else
    execute 'e ~/'.filename
    execute 
  endif
endfunction
autocmd BufNewFile,BufRead .vimhelp set syntax=help | set ft=help

" Custom todo page, I did repeat myself :[]
nnoremap ?  :call ToggleTodo()<CR>
function! ToggleTodo()
  let filename='.todo.md'
  let currentFilename=expand('%:t')
  if filename == currentFilename
    execute 'w | Bclose'
  else
    execute 'e ~/'.filename
    execute 'set foldmethod=manual'
  endif
endfunction




" Toggle (q)uickfix and (l)ocation list
nmap <silent> <leader>l :call ToggleList("Location List", 'l')<CR>
nmap <silent> <leader>q :call ToggleList("Quickfix List", 'c')<CR>

"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

"(v)im (r)eload
nmap <silent> <leader>vc :! cd ~/configurator && ./configurator<CR>:so $MYVIMRC<CR>
nmap <silent> <leader>vr :so $MYVIMRC<CR>

" Invert mark jumping keys
nnoremap ' `
nnoremap ` '

" Get the current highlight group. Useful for then remapping the color
map <leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" Extreme Buffer Killers
" nnoremap <silent> <C-q> <C-w>q
nnoremap <silent> Q :Bclose<CR>

" Arrow key tab and buffer nav
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Up> :bnext<CR>
nnoremap <C-Down> :bprevious<CR>
nnoremap <silent> <C-w>t :tabnew<CR>
" Swap window positions
nmap <C-w>z :call MarkWindowSwap()<CR>
nmap <C-w>m :call DoWindowSwap()<CR>


"make Y and V consistent with C and D
nnoremap Y y$
" nnoremap V v$
