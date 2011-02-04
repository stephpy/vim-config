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

autocmd BufWritePre * :%s/\s\+$//e "delete spaces at end of line

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Command-T configuration
let g:CommandTMaxHeight=20
map <D-t> :CommandT<CR>
map <C-t> :CommandT<CR>
map <C-y> :NERDTree<CR>
map <D-F> :Ack<CR>

" jQuery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" php-doc
source ~/.vim/bundle/php-doc/plugin/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>

"color
colorscheme vividchalk

" Project Tree
" Disable netrw's autocmd, since we're ALWAYS using NERDTree
runtime plugin/netRwPlugin.vim
augroup FileExplorer
  au!
augroup END

let g:NERDTreeHijackNetrw = 0

" If the parameter is a directory, cd into it
function s:CdIfDirectory(directory)
  if isdirectory(a:directory)
    call ChangeDirectory(a:directory)
  endif
endfunction

"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
"autocmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))

" NERDTree utility function
function s:UpdateNERDTree(stay)
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      NERDTree
      if !a:stay
        wincmd p
      end
    endif
  endif
endfunction

" Utility functions to create file commands
function s:CommandCabbr(abbreviation, expansion)
  execute 'cabbrev ' . a:abbreviation . ' <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "' . a:expansion . '" : "' . a:abbreviation . '"<CR>'
endfunction

function s:FileCommand(name, ...)
  if exists("a:1")
    let funcname = a:1
  else
    let funcname = a:name
  endif

  execute 'command -nargs=1 -complete=file ' . a:name . ' :call ' . funcname . '(<f-args>)'
endfunction
