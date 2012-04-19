StephPY VIM config, py.stephane1(at)gmail.com - http://stephpy.github.com
==================================================================

Inspired from https://github.com/spf13/spf13-vim.

# Installation

    One Shot:

    wget --no-check-certificate https://raw.github.com/stephpy/vim-config/master/install.sh -O ./install.sh && chmod +x ./install.sh && ./install.sh

    OR

    git clone git://github.com/stephpy/vim-config.git

    # Be sure you backup your .vim (copy them by using cmd "cp ~/.vim ~/.vim.backup")
    ln -s vim-config/.vim ~/.vim
    # Be sure you backup your .vimrc (copy them by using cmd "cp ~/.vimrc ~/.vimrc.backup")
    ln -s ~/.vimrc ~/.vimrc

    mkdir ~/.vim/bundle
    git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

    vim +BundleInstall

# Override

Define a ~/.vimrc.local and set your config on (or bundles)

Using vundle plugin (to set unobstrusive plugins)

Plugin list:

- [Auto-Pairs][Auto-Pairs]                     => Close [{('""')}]
- [HTML-AutoCloseTag][HTML-AutoCloseTag]       => Auto close html tags
- [ack.vim][ack.vim]                           => Searching on project, this need ackbetterthangrep
- [bufexplorer][bufexplorer]                   => Buffer explorer
- [checksyntax_vim][checksyntax_vim]           => Plugin which check automatically syntax of files (works for php and some other languages)
- [comment.vim][comment.vim]                   => Comment code
- [ctrlp.vim][ctrlp.vim]                       => As on textmate, searching on project a file and open it
- [jinja-syntax][jinja-syntax]                 => Jinja/Twig Syntax highliting
- [keepcase.vim][keepcase.vim]                 => case tool
- [nerdtree][nerdtree]                         => File navigation
- [phpqa][phpqa]                               => Php Quality check, Need +signs compilation of vim
- [sessionman.vim][sessionman.vim]             => Save session, use old session, etc ...
- [supertab][supertab]                         => Some function for <tab>
- [syntastic][syntastic]                       => Syntastic is a syntax checking plugin that runs files through external syntax checkers and displays any resulting errors to the user
- [taglist.vim][taglist.vim]                   => Show methods, properties of a class
- [tlib][tlib]                                 => This library provides some utility functions
- [vim-abolish][vim-abolish]                   => Awesome replace
- [vim-addon-mw-utils][vim-addon-mw-utils]     => Some utils
- [vim-align][vim-align]                       => Alignments
- [vim-colors-solarized][vim-colors-solarized] => Color theme
- [vim-cucumber][vim-cucumber]                 => Syntax highlighting
- [vim-easymotion][vim-easymotion]             => Use easymotions on VIM
- [vim-fugitive][vim-fugitive]                 => Git tools
- [vim-indent-object][vim-indent-object]       => Text Objects based on Indentation Level
- [vim-instant-markdown]                       => Render your .markdown files on a browser, need node.js and a node.js plugin to work
- [vim-markdown][vundle]                       => Markdown tools
- [vim-phpdoc][vim-phpdoc]                     => PHPDoc for classes, methods, vars, php5.3 compliant
- [vim-powerline][vim-powerline]               => Vim beautiful !
- [vim-ragtag][vim-ragtag]                     => html tips
- [vim-rspec][vim-rspec]                       => Enable the use of the spec command inside Vim
- [vim-snipmate][vim-snipmate]                 => As on textmate, easily add shortcut to create snippets
- [vim-surround][vim-surround]                 => Delete/change/add parentheses/quotes/XML-tags/much more with ease
- [vim-symfony][vim-symfony]                   => Shortcuts for Symfony2
- [vim-twig][vim-twig]                         => Twig syntax
- [vim-unimpaired][vim-unimpaired]             => Pairs of handy bracket mappings
- [vundle][vundle]                             => Manage bundles
- [zencoding-vim][zencoding-vim]               => Zencoding for vim

# Useful configs
    let g:pdv_cfg_Author="Stephane PY <py.stephane1@gmail.com>"
    let g:NERDTreeShowHidden=1                                " show hidden files on nerdtree

    coloscheme symfony

Shortcuts:

- CTRL + C             -> to comment line(s) selected
- CTRL + X             -> to uncomment line(s) selected
- CTRL + P             -> CTRL-P
- CTRL + Y             -> Open NerdTree navigation
- CTRL + F             -> Ack (search on project) **Need ack (betterthangrep.com)**
- CTRL + D             -> phpdoc
- CTRL + K             -> Launch php code sniffer
- CTRL + W then (key)  -> Align lines on key, check on AlignPlugin
- CTRL + H             -> Adding namespace of a file and the class name (php 5.3)
- F5 OR \be            -> Seeing buffer explorer

[Auto-Pairs]: https://github.com/vim-scripts/Auto-Pairs
[HTML-AutoCloseTag]: https://github.com/vim-scripts/HTML-AutoCloseTag
[ack.vim]: https://github.com/mileszs/ack.vim
[bufexplorer]: https://github.com/corntrace/bufexplorer
[checksyntax_vim]: https://github.com/tomtom/checksyntax_vim
[comment.vim]: https://github.com/vim-scripts/comment.vim
[ctrlp.vim]: https://github.com/kien/ctrlp.vim
[jinja-syntax]: https://github.com/JDeuce/jinja-syntax
[keepcase.vim]: https://github.com/vim-scripts/keepcase.vim
[nerdtree]: https://github.com/scrooloose/nerdtree
[phpcs.vim]: https://github.com/stephpy/phpcs.vim
[phpqa]: https://github.com/stephpy/phpqa
[sessionman.vim]: https://github.com/vim-scripts/sessionman.vim
[supertab]: https://github.com/ervandew/supertab
[syntastic]: https://github.com/scrooloose/syntastic
[taglist.vim]: https://github.com/vim-scripts/taglist.vim
[tlib]: https://github.com/vim-scripts/tlib
[vim-abolish]: https://github.com/tpope/vim-abolish
[vim-addon-mw-utils]: https://github.com/MarcWeber/vim-addon-mw-utils
[vim-align]: https://github.com/tsaleh/vim-align
[vim-colors-solarized]: https://github.com/altercation/vim-colors-solarized
[vim-cucumber]: https://github.com/tpope/vim-cucumber
[vim-easymotion]: https://github.com/Lokaltog/vim-easymotion
[vim-fugitive]: https://github.com/tpope/vim-fugitive
[vim-indent-object]: https://github.com/michaeljsmith/vim-indent-object
[vim-instant-markdown]: https://github.com/suan/vim-instant-markdown
[vim-markdown]: https://github.com/hallison/vim-markdown
[vim-phpdoc]: https://github.com/stephpy/vim-phpdoc
[vim-powerline]: https://github.com/Lokaltog/vim-powerline
[vim-ragtag]: https://github.com/tpope/vim-ragtag
[vim-rspec]: https://github.com/taq/vim-rspec
[vim-snipmate]: https://github.com/garbas/vim-snipmate
[vim-surround]: https://github.com/tpope/vim-surround
[vim-symfony]: https://github.com/stephpy/vim-symfony
[vim-twig]: https://github.com/beyondwords/vim-twig
[vim-unimpaired]: https://github.com/tpope/vim-unimpaired
[vundle]: https://github.com/gmarik/vundle
[zencoding-vim]: https://github.com/mattn/zencoding-vim
