" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeQuitOnOpen=1

" CtrlP
map <C-b> :CtrlPBuffer<CR>

" lualine
lua << END
require('lualine').setup {
    options = {
        theme = 'tokyonight'
    }
}
END

" Telescope
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>G <cmd>Telescope live_grep<cr>
nnoremap <leader>g <cmd>Telescope live_grep vimgrep_arguments=rg,--vimgrep,--smart-case,-g,!test<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

" Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Vim Better Whitespaces
let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown']
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitelines_at_eof=1
autocmd VimEnter * EnableWhitespace

" GitGutter
set updatetime=500
let g:gitgutter_sign_added = '|'
let g:gitgutter_sign_modified = '|'
let g:gitgutter_sign_removed = '|'
let g:gitgutter_sign_removed_first_line = '|'
let g:gitgutter_sign_modified_removed = '|'

" Coc.vim
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
