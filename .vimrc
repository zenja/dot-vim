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
Bundle 'fholgado/minibufexpl.vim'
Bundle 'klen/python-mode'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'

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

" Python-mode
" Keys:
" K             Show python docs
" Rope disabled and Jedi is used instead
" <Ctrl-Space>  Jedi-Vim autocomplete
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
" aC, C         Select a class. Ex: vaC, daC, dC, yaC, yC, caC, cC (normal, operator modes)
" iC            Select inner class. Ex: viC, diC, yiC, ciC (normal, operator modes)
" aM, M         Select a function or method. Ex: vaM, daM, dM, yaM, yM, caM, cM (normal, operator modes)
" iM            Select inner function or method. Ex: viM, diM, yiM, ciM (normal, operator modes)
" Commands:
" see also :help PythonModeCommands
" :Pydoc <args>         Show python documentation
" :PyLintToggle         Enable/disable pylint
" :PyLintCheckerToggle  Toggle code checker (pylint, pyflakes)
" :PyLint               Check current buffer
" :PyLintAuto           Automatically fix PEP8 errors
" :Pyrun                Run current buffer in python

" Let Jedi take over python autocomplete instaed of pymode_rope
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 0
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" EasyMotion Documentation
" All motions are now triggered with <Leader><Leader> by default
" Commands:
" <leader><leader>w
" <leader><leader>j
" <leader><leader>e
" <leader><leader>b
" <leader><leader>gE
" <leader><leader>f<search character>
" <leader><leader>t

" Tagbar shortcut
nnoremap <leader><leader>l :TagbarToggle<CR>

" Use <leader>w to switch between windows
nnoremap <leader>w <C-W><C-W>

" MiniBufExplorer Shortcuts
noremap <C-J>   :MBEbn<CR><C-W>_
noremap <C-K>   :MBEbp<CR><C-W>_
nnoremap <leader><leader>q   :MBEbw<CR>

" Open NERDTree automatically when opens a file
" and focus on the file instead of NERDTree itself
" MBE is also opened automatically to prevent strange behaviour
" when using Jedi autocompletion while NERDTree is opened
" whose reason is not clear yet :(
autocmd VimEnter * MBEOpen
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Set minimum window height to 1,
" so that MiniBufExplorer won't be hide when some window is maximized
set wmh=1
