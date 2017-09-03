set nocompatible

set t_CO=256
filetype plugin indent on

set encoding=utf-8 " the encoding displayed
set fileencoding=utf-8 " the encoding written to file

colorscheme gruvbox
set fillchars+=vert:\$
set background=dark

" Set to auto read when a file is changed from the outside
"set autoread

set ruler
set hidden
set smartindent
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
let &colorcolumn="80"


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


" auto-complete features
set complete=.,b,u,]
set completeopt=menu,preview

" Let ctrlp search through tags file (ctags)
nnoremap <leader>. :CtrlPTag<cr>

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#ale#enabled = 1
" display buffers in airline
let g:airline#extensions#tabline#enabled = 1


" vimtex
let g:tex_flavor='latex'
set runtimepath^=~/.vim/pack/jhejderup/start/vimtex

set laststatus=2
set ttimeoutlen=50

" Gitgutter
let g:gitgutter_async = 1

set tags=./tags,tags;$HOME

"Ale  for LaTex
let g:ale_linters = {'tex': ['chktex']}
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>


" filetype specific configuration
autocmd FileType gitcommit set spell textwidth=72 nofoldenable colorcolumn=51,73
autocmd FileType tex set spell textwidth=70 suffixes+=*.aux,*.pdf,*.fdb_latexmk,*.fls,*.log,*.out,*.toc sw=2
autocmd FileType markdown set spell textwidth=80	

" toggle spell lang
function! ToggleSpell()
    if &spell == 0
        set spell
        set spelllang=en
        echo 'spelllang=en'
    elseif &spelllang =~# 'en'
        set spell
        set spelllang=sv
        echo 'spelllang=sv'
    elseif &spelllang =~# 'sv'
        set nospell
        echo 'nospell'
    endif
endfunction
noremap <leader>z <ESC>:call ToggleSpell()<CR>

" Nerdtree file explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25
nmap <leader>n :Vexplore<cr>
