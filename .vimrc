" ===================================
" s.py .vimrc config
" contact: py.stephane1(at)gmail.com
" ===================================

syntax on                 " syntax highlighing
filetype on               " try to detect filetypes
filetype plugin on        " enable loading indent file for filetype
filetype indent on        " enable loading indent file for filetype

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'JDeuce/jinja-syntax'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'altercation/vim-colors-solarized'
Bundle 'beyondwords/vim-twig'
Bundle 'corntrace/bufexplorer'
Bundle 'ervandew/supertab'
Bundle 'garbas/vim-snipmate'
Bundle 'gmarik/vundle'
Bundle 'hallison/vim-markdown'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'michaeljsmith/vim-indent-object'

if executable('ack')
    Bundle 'mileszs/ack.vim'
endif

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'

if executable('phpcs')
    Bundle 'stephpy/phpcs.vim'
endif

Bundle 'stephpy/vim-phpdoc'
Bundle 'stephpy/vim-symfony'
Bundle 'taq/vim-rspec'
Bundle 'tomtom/checksyntax_vim'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tsaleh/vim-align'
Bundle 'vim-scripts/comment.vim'
Bundle 'vim-scripts/keepcase.vim'
Bundle 'vim-scripts/sessionman.vim'

if executable('ctags')
    Bundle 'vim-scripts/taglist.vim'
endif

Bundle 'vim-scripts/tlib'

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

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" ===================================
" Autocommands
" ===================================

"delete spaces at end of line
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufRead * silent! %s/[\r \t]\+$//
autocmd BufEnter *.php :%s/[ \t\r]\+$//e
autocmd BufEnter *.php :retab
au BufRead,BufNewFile *.twig set ft=twig syntax=htmljinja
autocmd FileType php map <C-K> :Phpcs<CR>

" ===================================
" Bundles configuration
" ===================================

let g:ragtag_global_maps = 1
let g:pdv_cfg_php4always=0 "using php5 doc tags
let g:ctrlp_match_window_reversed=0
let g:ctrlp_working_path_mode = 0

" ignore for ctrlp these dir,files
set wildignore+=*/cache/*,*/logs/*,*.swp
set wildignore+=*/.git/*,*/.svn/*,
set wildignore+=*.jpg,*.png,*.gif

set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize

" ===================================
" Mapping
" ===================================

nmap <leader>sl :SessionList<CR>
nmap <leader>ss :SessionSave<CR>

map <C-y> :NERDTreeToggle<CR>
map <C-i> :TlistToggle<CR>
map <C-f> :Ack

" Insert current namespace and opens php and create empty class, based on the file name
nmap <C-h> ggO<?php<CR><CR><ESC>"%PdF/r;:s#/#\\#g<CR>Inamespace  <ESC>d/[A-Z]<CR>Goclass <C-R>=expand("%:t:r")<CR><CR>{<CR>

" This will align params by using align vim bundle
nmap <C-D> :call PhpDocSingle()<CR><ESC>jv/\/<CR>kkk\tsp<CR>
vnoremap <C-D> :call PhpDocRange()<CR>

" Use local vimrc if available {
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
" }
