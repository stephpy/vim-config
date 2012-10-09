StephPY VIM config
==================

# Installation

One Shot:

```bash
wget --no-check-certificate https://raw.github.com/stephpy/vim-config/master/install.sh -O ./install.sh && chmod +x ./install.sh && ./install.sh
```

OR

```bash
git clone git://github.com/stephpy/vim-config.git ~/.vim-config

# Be sure you backup your .vim (copy them by using cmd "cp ~/.vim ~/.vim.backup")
ln -s ~/.vim-config/.vim ~/.vim
# Be sure you backup your .vimrc (copy them by using cmd "cp ~/.vimrc ~/.vimrc.backup")
ln -s ~/.vim-config/.vimrc ~/.vimrc

mkdir ~/.vim/bundle
git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

vim +BundleInstall +qa

# If your vim is compiled with ruby:
cd $HOME/.vim/bundle/Command-T/ruby/command-t && ruby extconf.rb && make
```

# Override

## Properties

Define a `~/.vimrc.local.before` or `~/.vimrc.local.after` and set your config on (or bundles)

## Bundles

If you want to change the list of bundle, list them on `~/.vimrc.bundle`. you can add just some bundle by adding them on `~/.vimrc.local`

-------------------------------------------------

Using vundle plugin (to set unobstrusive plugins)

Plugin list:

<table style="width: 100%">
    <tr>
        <th>Nom</th>
        <th>Description</th>
    </tr>
    <tr>
        <td><a href="https://github.com/mileszs/ack.vim">ack.vim</a></td>
        <td>Searching on project, this need ackbetterthangrep</td>
    </tr>
    <tr>
        <td><a href="https://github.com/corntrace/bufexplorer">bufexplorer</a></td>
        <td>Buffer explorer</td>
    </tr>
    <tr>
        <td><a href="https://github.com/wincent/Command-T">Command-T</a></td>
        <td>(ONLY IF VIM is compiled with ruby) As on textmate, searching on project a file and open it</td>
    </tr>
    <tr>
        <td><a href="https://github.com/vim-scripts/comments.vim">comments.vim</a></td>
        <td>Comments code</td>
    </tr>
    <tr>
        <td><a href="https://github.com/kien/ctrlp.vim">ctrlp.vim</a></td>
        <td>(ONLY IF VIM is NOT compiled with ruby) As on textmate, searching on project a file and open it</td>
    </tr>
    <tr>
        <td><a href="https://github.com/Raimondi/delimitMate">delimitMate</a></td>
        <td>Close brackets/quotes</td>
    </tr>
    <tr>
        <td><a href="https://github.com/everzet/guard-ctags-composer">guard-ctags-composer</a></td>
        <td>Works with guard to rebuild ctags files</td>
    </tr>
    <tr>
        <td><a href="https://github.com/scrooloose/nerdtree">nerdtree</a></td>
        <td>File navigation</td>
    </tr>
    <tr>
        <td><a href="https://github.com/vim-scripts/sessionman.vim">sessionman.vim</a></td>
        <td>Save session, use old session, etc ...</td>
    </tr>
    <tr>
        <td><a href="https://github.com/stephpy/snipmate-snippets.vim">Snipmate Snippets</a></td>
        <td>Snippets like on texmate</td>
    </tr>
    <tr>
        <td><a href="https://github.com/ervandew/supertab">supertab</a></td>
        <td>Some function for <tab></td>
    </tr>
    <tr>
        <td><a href="https://github.com/scrooloose/syntastic">syntastic</a></td>
        <td>Syntastic is a syntax checking plugin that runs files through external syntax checkers and displays any resulting errors to the user</td>
    </tr>
    <tr>
        <td><a href="https://github.com/vim-scripts/taglist.vim">taglist.vim</a></td>
        <td>Show methods, properties of a class</td>
    </tr>
    <tr>
        <td><a href="https://github.com/vim-scripts/tlib">tlib</a></td>
        <td>This library provides some utility functions</td>
    </tr>
    <tr>
        <td><a href="https://github.com/tpope/vim-abolish">vim-abolish</a></td>
        <td>Awesome replace</td>
    </tr>
    <tr>
        <td><a href="https://github.com/MarcWeber/vim-addon-mw-utils">vim-addon-mw-utils</a></td>
        <td>Some utils</td>
    </tr>
    <tr>
        <td><a href="https://github.com/tsaleh/vim-align">vim-align</a></td>
        <td>Alignments</td>
    </tr>
    <tr>
        <td><a href="https://github.com/Lokaltog/vim-easymotion">Easymotion for vim</a></td>
        <td>Easymotion for vim</td>
    </tr>
    <tr>
        <td><a href="https://github.com/tpope/vim-fugitive">vim-fugitive</a></td>
        <td>Git tools</td>
    </tr>
    <tr>
        <td><a href="https://github.com/groenewege/vim-less">vim-less</a></td>
        <td>Less for vim</td>
    </tr>
    <tr>
        <td><a href="https://github.com/suan/vim-instant-markdown">vim-instant-markdown</a></td>
        <td>Render your .markdown files on a browser, need node.js and a node.js plugin to work</td>
    </tr>
    <tr>
        <td><a href="https://github.com/hallison/vim-markdown">vim-markdown</a></td>
        <td>Markdown tools</td>
    </tr>
    <tr>
        <td><a href="https://github.com/stephpy/vim-php-cs-fixer">vim-php-cs-fixer</a></td>
        <td>Fix coding standards using psr0, psr1, psr2</td>
    </tr>
    <tr>
        <td><a href="https://github.com/arnaud-lb/vim-php-namespace">vim-php-namespace</a></td>
        <td>Generate php namespace for classes</td>
    </tr>
    <tr>
        <td><a href="https://github.com/stephpy/vim-phpdoc">vim-phpdoc</a></td>
        <td>PHPDoc for classes, methods, vars, php5.3 compliant</td>
    </tr>
    <tr>
        <td><a href="https://github.com/docteurklein/vim-phpunit">vim-phpunit</a></td>
        <td>Phpunit integration on vim</td>
    </tr>
    <tr>
        <td><a href="https://github.com/Lokaltog/vim-powerline">vim-powerline</a></td>
        <td>Vim beautiful !</td>
    </tr>
    <tr>
        <td><a href="https://github.com/garbas/vim-snipmate">vim-snipmate</a></td>
        <td>As on textmate, easily add shortcut to create snippets</td>
    </tr>
    <tr>
        <td><a href="https://github.com/tpope/vim-surround">vim-surround</a></td>
        <td>Delete/change/add parentheses/quotes/XML-tags/much more with ease</td>
    </tr>
    <tr>
        <td><a href="https://github.com/stephpy/vim-symfony">vim-symfony</a></td>
        <td>Shortcuts for Symfony2</td>
    </tr>
    <tr>
        <td><a href="https://github.com/beyondwords/vim-twig">vim-twig</a></td>
        <td>Twig syntax</td>
    </tr>
    <tr>
        <td><a href="https://github.com/gmarik/vundle">vundle</a></td>
        <td>Manage bundles</td>
    </tr>
</table>

# Trouble-shooting

If command-t does not work, see "Trouble-shooting" section on https://github.com/wincent/Command-T

# Useful configs

```viml
let g:pdv_cfg_Author="Stephane PY <py.stephane1@gmail.com>"
let g:NERDTreeShowHidden=1                                " show hidden files on nerdtree

colorscheme molokai
```

Shortcuts:

``
- CTRL + C             -> to comment line(s) selected
- CTRL + X             -> to uncomment line(s) selected
- CTRL + P             -> Command-T OR CTRL-P
- <leader> Y           -> Open NerdTree navigation
- <leader> F           -> Ack (search on project) **Need ack (betterthangrep.com)**
- <leader> D           -> phpdoc on class, methods, vars ...
- CTRL + W then (key)  -> Align lines on key, check on AlignPlugin
- <leader> be          -> Seeing buffer explorer
``
