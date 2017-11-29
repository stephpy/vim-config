let mapleader = ","

" ===================================
" s.py .vimrc config
" contact: py.stephane1(at)gmail.com
" ===================================

syntax on                 " syntax highlighing
filetype off                  " required

set rtp+=~/.vim/bundle/vundle
set rtp+=/usr/local/opt/fzf

call vundle#begin()

if filereadable(expand("~/.vimrc.local.before"))
    source ~/.vimrc.local.before
endif

if filereadable(expand("~/.vimrc.bundle"))
    source ~/.vimrc.bundle
else
    source ~/.vim/vimrc.bundle
endif

call vundle#end()            " required

filetype plugin indent on " required

set pastetoggle=<leader>p
set tags+=vendor.tags

" ===================================
" Configuration
" ===================================

set cursorline
set encoding=utf-8
set clipboard=unnamed

set nocompatible
set laststatus=2               " Always show the statusline
set nobackup                   " delete backup
set noswapfile
set backspace=indent,eol,start " allow backspacing over everything in insert mode

set autoindent                 " always set autoindenting on
set copyindent                 " copy the previous indentation on autoindenting"
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
set shiftround                 " use multiple of shiftwidth when indenting with '<' and '>'"
set tabstop=4                  " nombre de place que prend une tabulation
set hlsearch
set ignorecase                 " ignore case when searching
set smarttab
set hidden
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set list

colorscheme vividchalk

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" ===================================
" Autocommands
" ===================================

autocmd BufWritePre *.php silent! %s/[\r \t]\+$//
autocmd BufWritePre *.php :set et|retab

autocmd BufNewFile,BufRead *.twig set filetype=twig
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
autocmd vimenter * if !argc() || argv() == ['.'] | NERDTree | endif " open nerdtree when open vim.
autocmd CompleteDone * pclose

" ===================================
" PHP
" ===================================

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

autocmd FileType php inoremap <Leader>ns <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>ns :call PhpInsertUse()<CR>
autocmd FileType php imap <leader>ne <C-O>:call PhpExpandClass()<CR>
autocmd FileType php map <leader>ne :call PhpExpandClass()<CR>
autocmd FileType php nmap <leader>d :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <leader>d :call PhpDocRange()<CR>

" ===================================
" Mapping
" ===================================

map <leader>y :NERDTreeToggle<CR>
nmap <leader>gbl :Gblame<CR>
map <leader>e :set expandtab<CR>
"imap ;; <Esc>
nmap <c-l> <c-]>

let $FZF_DEFAULT_COMMAND = 'find . -type f | grep -v "cache/" | grep -v "\.git/" | grep -v "\.mat$"'
nnoremap <silent> <C-P> :FZF -x<CR>

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

if filereadable(expand("~/.vimrc.local.after"))
    source ~/.vimrc.local.after
endif

