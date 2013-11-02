" Set color scheme
set t_Co=256
"colors Tomorrow-Night-Bright
colors jellybeans

" Map jj to ESC in insert mode
inoremap jj <ESC>

" Set the width of TAB
set tabstop=4
" Expand tab to spaces
set expandtab
" Every backspace will remove 4 spaces
set softtabstop=4
" Set auto-indent width
set shiftwidth=4
" Set smart tab
set smarttab

" Line number
set number

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" Set no vi compatibility
set nocompatible

" Filetype-based Intentation
au FileType python setl tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab
au FileType ruby,eruby,yaml setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab
au FileType yml setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab
au FileType html setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab

" Code Folding
set foldmethod=indent
set foldlevel=99

" Switch between window splits quickly
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h 

" Syntax Highlighting and Validation
syntax on
filetype on
filetype plugin indent on

" have j,k to operate on display lines as default
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
