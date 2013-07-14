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

" For autoload pathogen plugin correctly
filetype off                "will turn on later
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Code Folding
set foldmethod=indent
set foldlevel=99

" Switch between window splits quickly
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h 

"Bind a key to toggle the Gundo window:
map <leader>g :GundoToggle<CR>

" Tell pyflakes not use the quickfix window
let g:pyflakes_use_quickfix = 0

" Jump to each of the pep8 violations in the quickfix window quickly
let g:pep8_map='<leader>8'

" Configure SuperTab to be context sensitive
" and to enable omni code completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Syntax Highlighting and Validation
syntax on
filetype on
filetype plugin indent on

" have j,k to operate on display lines as default
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
