filetype plugin indent on
syntax on

set nowrap

set autoread
set autowrite
set autowriteall

set nobackup
set nowritebackup
set noswapfile

set incsearch
set hlsearch
noremap <silent> <C-c> :let @/=""<cr>

set scrolloff=8

set backspace=indent,eol,start

let g:netrw_banner=-2

nmap <silent> <leader>b :make<cr>
nmap <silent> <leader>B :Make<cr>
