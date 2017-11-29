StephPY VIM config
==================

# Installation

One Shot:

```bash
wget https://raw.github.com/stephpy/vim-config/master/install.sh -O ./install.sh && chmod +x ./install.sh && ./install.sh
```

OR

```bash
git clone git://github.com/stephpy/vim-config.git ~/.vim-config

# Be sure you backup your .vim (copy them by using cmd "cp ~/.vim ~/.vim.backup")
ln -s ~/.vim-config/.vim ~/.vim
# Be sure you backup your .vimrc (copy them by using cmd "cp ~/.vimrc ~/.vimrc.backup")
ln -s ~/.vim-config/.vimrc ~/.vimrc

mkdir ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

vim +BundleInstall +qa
```

# Override

## Bundles

Define a `~/.vimrc.bundle` and add your own bundles:

```
source ~/.vim/vimrc.bundle

Bundle 'nanotech/jellybeans.vim'
...
```

## Properties

Define a `~/.vimrc.local.before` or a `~/.vimrc.local.after` and set your config on (or bundles), example:

```
" ~/.vimrc.local.after
let g:pdv_cfg_Author = "Stephane PY <py.stephane1@gmail.com>"

let g:php_cs_fixer_path = "~/bin/php-cs-fixer" 
let g:php_cs_fixer_rules = "@Symfony,-@PSR1,@PSR2"

let g:gutentags_cache_dir = '~/.vim/gutentags'
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']

let g:ale_linters = {'php': ['php', 'hack', 'langserver', 'phpmd', 'phpstan']}
" I removed phpcs because it's a bit extremist ...
"let g:ale_linters = {'php': ['php', 'hack', 'langserver', 'phpcs', 'phpmd', 'phpstan']}

colorscheme jellybeans
```

-------------------------------------------------

Shortcuts:

``
- CTRL + C      -> to comment line(s) selected
- CTRL + X      -> to uncomment line(s) selected
- CTRL + P      -> FZF <3
- <leader> Y    -> Open NerdTree navigation
- <leader> D    -> phpdoc on class, methods, vars ...
- <leader> t    -> Align lines on key, check on AlignPlugin
- <leader> be   -> Seeing buffer explorer
``
