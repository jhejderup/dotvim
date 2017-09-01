set nocompatible

set t_CO=256
filetype plugin indent on

set encoding=utf-8 " the encoding displayed
set fileencoding=utf-8 " the encoding written to file

set background=dark

syntax on

filetype on
filetype plugin on
filetype indent on

" show linenumbers
set number
" ctrlp
set runtimepath^=~/.vim/pack/jhejderup/start/ctrlp

" Make CtrlP faster by making it skip files inside .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Let ctrlp search through tags file (ctags)
nnoremap <leader>. :CtrlPTag<cr>

" vim-airline
let g:airline_powerline_fonts = 1

" vimtex
let g:tex_flavor='latex'
set runtimepath^=~/.vim/pack/jhejderup/start/vimtex

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" display buffers in airline
let g:airline#extensions#tabline#enabled = 1

set laststatus=2
set ttimeoutlen=50

" Gitgutter
let g:gitgutter_async = 1
