StephPY VIM config, py.stephane1(at)gmail.com - http://stephpy.github.com
==================================================================

Using pathogen plugin (to set unobstrusive plugins)

Plugin list:

- [ack][ack]                             => Searching on project
- [Align][align]                         => Alignments of code
- [bufexplorer][bufexplorer]             => Explorer of buffer
- [check-syntax][check-syntax]           => Plugin which check automatically syntax of files (works for php and some other languages)
- [command-t][command-t]                 => As on textmate, searching on project a file and open it
- [comment][comment]                     => Plugin to comment
- [javascript][javascript]               => Javascript helper
- [jinja][jinja]                         => Jinja/Twig Syntax highliting
- [jQuery][jQuery]                       => jQuery helper
- [keepcase][keepcase]
- [nerdtree][nerdtree]                   => Tree of project
- [pathogen][pathogen]                   => use plugins as bundle to be unobstrusive and clean.
- [php-doc][php-doc]                     => php doc for classes, methods, vars
- [php][php]                             => php default plugin to implement some tools (colorization, highlight)
- [phpcs][phpcs]                         => php code sniffer implemented on vim
- [ragtag][ragtag]                       => html tips
- [snipMate][snipMate]                   => As on textmate, easily add shortcut to create snippets
- [supertab][supertab]                   => Some function for <tab>
- [symfony][symfony]                     => Shortcuts for symfony 1 shell
- [taglist][taglist]
- [vim-abolish][vim-abolish]
- [vim-colors-solarized][vim-colors-solarized] => Vim theme
- [vim-cucumber][vim-cucumber]           => syntax highlighting
- [vim-fugitive][vim-fugitive]           => git tools
- [vim-indent-object][vim-indent-object] => Text Objects based on Indentation Level
- [vim-lusty][vim-lusty]                 => jumb buffer
- [vim-markdown][vim-markdown]           => Markdown tools
- [vim-powerline][vim-powerline]         => Powerline theme
- [vim-rspec][vim-rspec]                 => Enable the use of the spec command inside Vim
- [vim-surround][vim-surround]           => Delete/change/add parentheses/quotes/XML-tags/much more with ease
- [vim-unimpaired][vim-unimpaired]       => Pairs of handy bracket mappings
- [zencoding-vim][zencoding-vim]         => Zencoding for vim

# To install

    git clone git://github.com/stephpy/vim-config.git
    cd vim-config && git submodule init && git submodule update
    git submodule foreach git checkout master && git submodule foreach git pull
    mv vim-config/.vim ~/.vim
    # Be sure you backup your .vimrc and .gvimrc (copy them by using cmd "cp ~/.vimrc ~/.vimrc.backup && cp ~/.gvimrc ~/.gvimrc.backup ")
    echo "source ~/.vim/.vimrc" > ~/.vimrc
    echo "source ~/.vim/.gvimrc" > ~/.gvimrc

# Keep submodules updated


    git submodule foreach git pull .

# Config useful
    let g:php_path="/Applications/MAMP/bin/php5.3/bin/php"         " used by symfony1 bundle to get great php to call symfony1 commands
    let g:pdv_cfg_Author="Stephane PY <py.stephane1(at)gmail.com>" " change the authorname for phpdoc
    let g:NERDTreeShowHidden=1                                     " show hidden files on nerdtree

    coloscheme symfony

Shortcuts:

- CTRL + C             -> to comment line(s) selected
- CTRL + X             -> to uncomment line(s) selected
- CTRL + T             -> Command-T
- CTRL + Y             -> Open NerdTree nafication
- CTRL + F             -> Ack (search on project)
- CTRL + P             -> document a method, class, var
- CTRL + K             -> Launch php code sniffer
- CTRL + W then (key)  -> Align lines on key, check on AlignPlugin
- CTRL + H             -> Adding namespace of a file and the class name (php 5.3)
- F5                   -> Seeing buffer explorer
- \s (symfony command) -> symfony1
- :Symfony *command*   -> symfony1

[pathogen]: http://www.vim.org/scripts/script.php?script_id=2332
[align]: http://www.vim.org/scripts/script.php?script_id=294
[ack]: http://www.vim.org/scripts/script.php?script_id=2572
[bufexplorer]: http://www.vim.org/scripts/script.php?script_id=42
[command-t]: http://www.vim.org/scripts/script.php?script_id=3025
[check-syntax]: http://www.vim.org/scripts/script.php?script_id=1431
[comment]: http://www.vim.org/scripts/script.php?script_id=1528
[javascript]: http://www.vim.org/scripts/script.php?script_id=2083
[jinja]: http://www.twig-project.org/doc/templates.html#ides-integration
[jQuery]: http://www.vim.org/scripts/script.php?script_id=2416
[keepcase]: https://github.com/vim-scripts/keepcase.vim
[nerdtree]: http://www.vim.org/scripts/script.php?script_id=1658
[php]: http://www.vim.org/scripts/script.php?script_id=1571
[phpcs]: http://www.koch.ro/blog/index.php?/archives/63-VIM-an-a-PHP-IDE.html
[php-doc]: http://www.vim.org/scripts/script.php?script_id=1355
[ragtag]: http://www.vim.org/scripts/script.php?script_id=1896
[snipMate]: http://www.vim.org/scripts/script.php?script_id=2540
[supertab]: http://www.vim.org/scripts/script.php?script_id=1643
[taglist]: http://www.vim.org/scripts/script.php?script_id=273
[vim-abolish]: https://github.com/tpope/vim-abolish.git
[vim-colors-solarized]: https://github.com/altercation/vim-colors-solarized
[vim-cucumber]: https://github.com/tpope/vim-cucumber
[vim-fugitive]: http://www.vim.org/scripts/script.php?script_id=2975
[vim-indent-object]: http://www.vim.org/scripts/script.php?script_id=3037
[vim-lusty]: https://github.com/sjbach/lusty
[vim-markdown]: http://www.vim.org/scripts/script.php?script_id=2882
[vim-powerline]: https://github.com/Lokaltog/vim-powerline
[vim-rspec]: http://www.vim.org/scripts/script.php?script_id=2567
[vim-surround]: http://www.vim.org/scripts/script.php?script_id=1697
[vim-unimpaired]: http://www.vim.org/scripts/script.php?script_id=1590
[zencoding-vim]: http://www.vim.org/scripts/script.php?script_id=2981
