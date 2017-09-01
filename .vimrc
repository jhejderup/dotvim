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
let g:airline#extensions#tabline#enabled = 0

set laststatus=2
set ttimeoutlen=50

" Gitgutter
let g:gitgutter_async = 1

set tags=./tags,tags;$HOME

" Syntastic for LaTex
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_tex_checkers = ['chktex']
let g:syntastic_loc_list_height=3

" Nerdtree file explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25
nmap <leader>n :Vexplore<cr>
