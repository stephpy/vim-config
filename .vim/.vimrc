" ===================================
" s.py .vimrc config
" contact: py.stephane1(at)gmail.com
" ===================================

syntax on                 " syntax highlighing
filetype on               " try to detect filetypes
filetype plugin on        " enable loading indent file for filetype
filetype indent on        " enable loading indent file for filetype

call pathogen#runtime_append_all_bundles()

" ===================================
" Configuration
" ===================================

set cursorline
set encoding=utf-8

set nocompatible
set nobackup                   " delete backup
set noswapfile
set backspace=indent,eol,start " allow backspacing over everything in insert mode

set autoindent                 " always set autoindenting on
set history=50                 " keep 50 lines of command line history
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands
set incsearch                  " do incremental searching
set novisualbell               " turn off visual bell
set vb t_vb=".
set title                      " show title in console title bar
set ttyfast                    " smoother changes

set expandtab
set shiftwidth=4               " nombre d'espace apres un '>>'
set tabstop=4                  " nombre de place que prend une tabulation
set hlsearch
set ignorecase                 " ignore case when searching
set smarttab
set hidden

"color
colorscheme vividchalk

"delete spaces at end of line
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufRead * silent! %s/[\r \t]\+$//
autocmd BufEnter *.php :%s/[ \t\r]\+$//e

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" ===================================
" Bundles configuration
" ===================================

let g:CommandTMaxHeight=20
let g:ragtag_global_maps = 1
" Syntax coloration of twig files
au BufRead,BufNewFile *.twig set ft=twig syntax=htmljinja
" php doc syntax
source ~/.vim/php-doc.vim

" Project Tree
" Disable netrw's autocmd, since we're ALWAYS using NERDTree
runtime plugin/netRwPlugin.vim
augroup FileExplorer
  au!
augroup END

let g:NERDTreeHijackNetrw = 0

" ===================================
" Mapping
" ===================================

map <C-t> :CommandT<CR>
map <C-y> :NERDTreeToggle<CR>
map <C-i> :TlistToggle<CR>
map <C-f> :Ack
map <F5> \be

" Insert current namespace and opens php and create empty class, based on the file name
nmap <C-h> ggO<?php<CR><CR><ESC>"%PdF/r;:s#/#\\#g<CR>Inamespace  <ESC>d/[A-Z]<CR>Goclass <C-R>=expand("%:t:r")<CR><CR>{<CR>

inoremap <C-P> <ESC>:call PhpDocSingle()<CR>
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>

" Code sniffer
autocmd FileType php map <C-K> :Phpcs<CR>
