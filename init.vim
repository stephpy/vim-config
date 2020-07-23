let mapleader = ","

" ===================================
" s.py init.vim config
" contact: py.stephane1(at)gmail.com
" ===================================

syntax on      " syntax highlighing
filetype off   " required

call plug#begin('~/.config/vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'corntrace/bufexplorer'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'yggdroot/indentline'
Plug 'sheerun/vim-polyglot'
Plug 'Xuyuanp/nerdtree-git-plugin'

" syntax
"Plug 'stephpy/vim-twig'
"Plug 'stephpy/vim-yaml'

" help code
Plug 'stephpy/vim-phpdoc'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tsaleh/vim-align'
Plug 'christianrondeau/vim-base64'
Plug 'mhinz/vim-grepper'
Plug 'jiangmiao/auto-pairs'

" theme
Plug 'tomasr/molokai'
Plug 'bling/vim-airline'
Plug 'ayu-theme/ayu-vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

"
"" lint/cs
Plug 'stephpy/vim-php-cs-fixer'
Plug 'w0rp/ale'

"" autocompletion
Plug 'ncm2/ncm2'
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'phpactor/ncm-phpactor'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

" Versioning
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" others
Plug 'ludovicchabant/vim-gutentags'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tpope/vim-sensible' 
Plug 'mileszs/ack.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()


autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
set shortmess+=c
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

filetype plugin indent on " required

set pastetoggle=<leader>p
set tags+=vendor.tags

" ===================================
" Configuration
" ===================================

set nocursorline
set encoding=utf-8
set clipboard=unnamedplus

set nocompatible
set laststatus=2               " Always show the statusline
set nobackup                   " delete backup
set noswapfile
set backspace=indent,eol,start " allow backspacing over everything in insert mode

set autoindent                 " always set autoindenting on
set copyindent                 " copy the previous indentation on autoindenting"
set history=10                 " keep 50 lines of command line history
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands
set incsearch                  " do incremental searching
set novisualbell               " turn off visual bell
set vb t_vb=".
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

" theme 
if (has("termguicolors"))
 set termguicolors
endif

"colorscheme molokai
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

colorscheme onehalfdark
"let g:WebDevIconsUnicodeDecorateFolderNodes=0
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = '💩'
let g:airline_theme='onehalfdark'

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" ===================================
" Autocommands
" ===================================

autocmd FileType php setlocal omnifunc=phpactor#Complete 

autocmd BufWritePre *.php silent! %s/[\r \t]\+$// 
autocmd BufWritePre *.php :set et|retab 
autocmd BufNewFile,BufRead *.twig set filetype=twig 
autocmd BufNewFile,BufRead *.less set filetype=less 
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig 
autocmd vimenter * if !argc() || argv() == ['.'] | NERDTree | endif 
" open nerdtree when open vim.  autocmd CompleteDone * pclose "
"" ===================================
"" PHP
"" ===================================
"
"" autocomplete
"let g:deoplete#enable_at_startup = 1
"
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

" PHPACTOR

nmap <Leader>mm :call phpactor#ContextMenu()<CR>
nmap <Leader>ns :call phpactor#UseAdd()<CR>
nmap <Leader>oo :call phpactor#GotoDefinition()<CR>
nmap <Leader>os :call phpactor#GotoDefinitionHsplit()<CR>
nmap <Leader>ov :call phpactor#GotoDefinitionVsplit()<CR>
nmap <Leader>n :call phpactor#ClassNew()<CR>
" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>


autocmd FileType php nmap <leader>d :call PhpDocSingle()<CR><ESC>jv/\/<CR>kkk<leader>tsp<CR>
autocmd FileType php vnoremap <leader>d :call PhpDocRange()<CR>

let g:php_cs_fixer_path = "~/bin/php-cs-fixer" 
let g:php_cs_fixer_rules = "@Symfony,-@PSR1,@PSR2"

let g:ale_linters = {'php': ['php', 'hack', 'langserver', 'phpmd', 'phpstan']}
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'php': ['trim_whitespace', 'php_cs_fixer'],
\   'javascript': ['trim_whitespace', 'prettier'],
\   'yaml': ['trim_whitespace'],
\   'markdown': ['trim_whitespace']
\}

let g:php_namespace_sort_after_insert = 1

" ===================================
" Mapping
" ===================================

map <C-c> <leader>c<space><cr>
nmap <Leader>t :Tagbar<CR>
map <leader>y :NERDTreeToggle<CR>
nmap <leader>gbl :Gblame<CR>
map <leader>e :set expandtab<CR>

" decode/encode base64 in a yaml
" like this:
" foo: "string to base64 encode"
map <leader>' ^f"vi"<leader>atob<CR>k<ESC>
map <leader>§ ^f"vi"<leader>btoa<CR>k<ESC>
map <leader>u :r !uuidgen<CR>

" tags 
nmap <leader>k <c-]>
nmap <leader>j <c-]>
nmap <leader>h :tprevious<CR>
nmap <leader>l :tnext<CR>

let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden'
nnoremap <silent> <C-P> :FZF -x<CR>

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

let g:gutentags_cache_dir = '~/.config/nvim/gutentags'
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']

map <C-f> :Grepper<cr>

let g:grepper               = {}
let g:grepper.highlight     = 1
let g:grepper.simple_prompt = 1
let g:grepper.dir = 'repo,cwd'
let g:grepper.side_cmd = 'botright vnew'

runtime plugin/grepper.vim

let g:grepper.tools = ['rg', 'ag']
let g:grepper.ag = { 'grepprg': 'ag --vimgrep --skip-vcs-ignores --hidden --' }

source ~/.config/nvim/init.local.vim
