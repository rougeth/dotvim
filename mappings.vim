" -----------------------------------------------------------------------------
" => Keys mapping
" -----------------------------------------------------------------------------

" Changing <ESC>
imap jj <esc>

" Improve up/down movement on wrapped lines (vimbits)
nnoremap j gj
nnoremap k gk

" Jump to the top and bottom line using K and J
noremap J L
noremap K H

" Jump to start and end of line using the home row keys
noremap H ^
noremap L $

" Easier split navigations with Ctrl-(h, j, k, l)
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

" F10 cleans up the search history
map <f10> :let @/ = ""<cr>

" Select all text in current buffer
map <Leader>a ggVG

" Use system clipboard with C-y and C-p
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP
