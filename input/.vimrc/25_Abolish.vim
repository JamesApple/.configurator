" Coercion, clever search n' replace and typo fixer
Plug 'tpope/vim-abolish'

" Replace within block
nnoremap <leader>r :'{,'}Subvert/<c-r><c-w>//g<left><left>
xnoremap <leader>r y:'{,'}Subvert/<c-r><c-0>//g<left><left>

" Replace in entire file
nnoremap <leader>R :%Subvert/<c-r><c-w>//g<left><left>
xnoremap <leader>R y:%Subvert/<c-r><c-0>//g<left><left>

