" Set no vi compatibility
set nocompatible

" Turn off filetype
filetype off

" This is for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" TODO: The bundles you install will be listed here
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'davidhalter/jedi-vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'myusuf3/numbers.vim'

filetype plugin indent on

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

" Syntax Highlighting
syntax on

" have j,k to operate on display lines as default
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" Powerline setup
" laststatus ensures that Powerline shows up even if you don't have any splits.
set laststatus=2

" For NERDTree
map <F2> :NERDTreeToggle<CR>

" For numbers.vim
nnoremap <F3> :NumbersToggle<CR>

" Change leader key to ','
let mapleader=","
