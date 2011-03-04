cpnfotehwin VIM config, py.stephane1(at)gmail.com - http://imspy.fr
==================================================================

Using pathogen plugin (to set unobstrusive plugins)

Plugin list:

- [Align][align]                         => Alignments of code
- [ack][ack]                             => Searching on project
- [autoclose][autoclose]                 => Autoclose ({[]})
- [bufexplorer][bufexplorer]             => Explorer of buffer
- [command-t][command-t]                 => As on textmate, searching on project a file and open it
- [check-syntax][check-syntax]           => Plugin which check automatically syntax of files (works for php and some other languages)
- [comment][comment]                     => Plugin to comment
- [jQuery][jQuery]                       => jQuery helper
- [javascript][javascript]               => Javascript helper
- [nerdtree][nerdtree]                   => Tree of project
- [pathogen][pathogen]                   => use plugins as bundle to be unobstrusive and clean.
- [php][php]                             => php default plugin to implement some tools (colorization, highlight)
- [phpcs][phpcs]                         => php code sniffer implemented on vim
- [php-doc][php-doc]                     => php doc for classes, methods, vars
- [php-folding][php-folding]             => Folding php classes, methods, operators, as php but as log maps to unfold or fold ... (arrow-keys)
- [ragtag][ragtag]                       => html tips
- [snipMate][snipMate]                   => As on textmate, easily add shortcut to create snippets
- [supertab][supertab]                   => Some function for <tab>
- [symfony][symfony]                     => Shortcuts for symfony shell
- [taglist][taglist]
- [vim-cucumber][vim-cucumber]           => syntax highlighting
- [vim-fugitive][vim-fugitive]           => git tools
- [vim-git][vim-git]                     => git tools
- [vim-haml][vim-haml]                   => haml files
- [vim-indent-object][vim-indent-object] => Text Objects based on Indentation Level
- [vim-markdown][vim-markdown]           => Markdown tools
- [vim-rspec][vim-rspec]                 => Enable the use of the spec command inside Vim
- [vim-surround][vim-surround]           => Delete/change/add parentheses/quotes/XML-tags/much more with ease
- [vim-unimpaired][vim-unimpaired]       => Pairs of handy bracket mappings

# To install

- git clone git://github.com/cpnfortehwin/vim-config.git
- mv vim-config/.vim ~/.vim
# Be sure you backup your .vimrc and .gvimrc (copy them by using cmd "cp ~/.vimrc ~/.vimrc.backup && cp ~/.gvimrc ~/.gvimrc.backup ")
- echo "source ~/.vim/.vimrc" > ~/.vimrc
- echo "source ~/.vim/.gvimrc" > ~/.gvimrc

# Config useful
    let g:php_path="/Applications/MAMP/bin/php5.3/bin/php"         " used by symfony bundle to get great php to call symfony commands
    let g:pdv_cfg_Author="Stephane PY <py.stephane1(at)gmail.com>" " change the authorname for phpdoc
    let g:NERDTreeShowHidden=1                                     " show hidden files on nerdtree

Shortcuts:

- CTRL + C             -> to comment line(s) selected
- CTRL + X             -> to uncomment line(s) selected
- CTRL + T             -> Command-T
- CTRL + Y             -> Open NerdTree nafication
- CTRL + F             -> Ack (search on project)
- CTRL + P             -> document a method, class, var
- CTRL + K             -> Launch php code sniffer
- CTRL + W then (key)  -> Align lines on key, check on AlignPlugin
- F5                   -> Seeing buffer explorer
- \s (symfony command) -> Symfony
- :Symfony *command*   -> symfony

[FIX]
- Bug during the indentation of class/functions/...(all brackets) on php, do a back indent ...
- Unset vimfugitive OR vim-git which do same works
- What for vim-haml, cucumber ? useful ?
- Autoclose works ? Look for an other plugin better

[pathogen]: http://www.vim.org/scripts/script.php?script_id=2332
[align]: http://www.vim.org/scripts/script.php?script_id=294
[ack]: http://www.vim.org/scripts/script.php?script_id=2572
[autoclose]: http://www.vim.org/scripts/script.php?script_id=2009
[bufexplorer]: http://www.vim.org/scripts/script.php?script_id=42
[command-t]: http://www.vim.org/scripts/script.php?script_id=3025
[check-syntax]: http://www.vim.org/scripts/script.php?script_id=1431
[comment]: http://www.vim.org/scripts/script.php?script_id=1528
[jQuery]: http://www.vim.org/scripts/script.php?script_id=2416
[javascript]: http://www.vim.org/scripts/script.php?script_id=2083
[nerdtree]: http://www.vim.org/scripts/script.php?script_id=1658
[php]: http://www.vim.org/scripts/script.php?script_id=1571
[phpcs]: http://www.koch.ro/blog/index.php?/archives/63-VIM-an-a-PHP-IDE.html
[php-doc]: http://www.vim.org/scripts/script.php?script_id=1355
[php-folding]: http://www.vim.org/scripts/script.php?script_id=1623
[ragtag]: http://www.vim.org/scripts/script.php?script_id=1896
[snipMate]: http://www.vim.org/scripts/script.php?script_id=2540
[supertab]: http://www.vim.org/scripts/script.php?script_id=1643
[taglist]: http://www.vim.org/scripts/script.php?script_id=273
[vim-cucumber]: https://github.com/tpope/vim-cucumber
[vim-fugitive]: http://www.vim.org/scripts/script.php?script_id=2975
[vim-git]: http://www.vim.org/scripts/script.php?script_id=1654
[vim-haml]: http://www.vim.org/scripts/script.php?script_id=1773
[vim-indent-object]: http://www.vim.org/scripts/script.php?script_id=3037
[vim-markdown]: http://www.vim.org/scripts/script.php?script_id=2882
[vim-rspec]: http://www.vim.org/scripts/script.php?script_id=2567
[vim-surround]: http://www.vim.org/scripts/script.php?script_id=1697
[vim-unimpaired]: http://www.vim.org/scripts/script.php?script_id=1590
