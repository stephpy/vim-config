" ===================================
" s.py .vimrc config
" contact: py.stephane1(at)gmail.com
" ===================================

" Include user's local vim config
"if filereadable(expand("~/.vim/vimrc"))
"  source ~/.vim/vimrc
"endif

syntax on
filetype plugin on

call pathogen#runtime_append_all_bundles()

set cursorline
set encoding=utf-8

set nocompatible
set nobackup " delete backup
set backspace=indent,eol,start " allow backspacing over everything in insert mode

set autoindent
set history=50	 " keep 50 lines of command line history
set ruler		 " show the cursor position all the time
set showcmd		 " display incomplete commands
set incsearch    " do incremental searching
set vb t_vb=     " no beeping"

set expandtab
set shiftwidth=4 "nombre d'espace apres un '>>'"
set tabstop=4    "nombre de place que prend une tabulation"
set hlsearch


" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Command-T configuration
let g:CommandTMaxHeight=20
map <Leader>t :CommandT<CR>

" jQuery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" php-doc
source ~/.vim/bundle/php-doc/plugin/php-doc.vim 
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 
