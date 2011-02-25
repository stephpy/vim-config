cpnfotehwin VIM config, py.stephane1(at)gmail.com - http://imspy.fr
==================================================================

Using pathogen plugin (to set unobstrusive plugins)

Plugin list:

- [http://www.vim.org/scripts/script.php?script_id=294][Align]             => Alignments of code
- ack               => Searching on project
- autoclose         => Autoclose ({[]})
- bufexplorer       => Explorer of buffer
- command-t         => As on textmate, searching on project a file and open it
- check-syntax      => Plugin which check automatically syntax of files (works for php and some other languages)
- comment           => Plugin to comment
- jQuery            => jQuery helper
- javascript        => Javascript helper
- nerdtree          => Tree of project
- php               => php tools
- phpcs             => php code sniffer
- php-doc           => php doc
- php-folding
- snipMate          => As on textmate, easily add shortcut to create snippets
- supertab          => Some function for <tab>
- taglist
- vim-cucumber      => syntax highlighting
- vim-fugitive      => git tools
- vim-git           => git tools
- vim-haml          => haml files
- vim-indent-object => Text Objects based on Indentation Level
- vim-markdown      => markdown tools
- vim-rspec         => Enable the use of the spec command inside Vim
- vim-surround      => Delete/change/add parentheses/quotes/XML-tags/much more with ease
- vim-unimpaired    => Pairs of handy bracket mappings
- vim-vividchalk    => Theme
- zoomWin           => Zooming on file


# To install

- git clone git://github.com/cpnfortehwin/vim-config.git
- mv vim-config/.vim ~/.vim
- cd ~
- ln -s ~/.vim/.vimrc
- ln -s ~/.vim/.gimrc

You can too create a .vimrc file and just do this to load .vimrc:

    if filereadable(expand("~/.vim/.vimrc"))
      source ~/.vim/.vimrc
    endif


# For php doc, change the file /bundle/php-doc/plugin/php-doc.vim and add your name and other options

Shortcuts:

- CTRL + C -> to comment line(s) selected
- CTRL + X -> to uncomment line(s) selected

- CTRL + T -> Command-T
- CTRL + Y -> Open NerdTree nafication
- CTRL + F -> Ack (search on project)
- CTRL + P -> document a method, class, var
- CTRL + K -> Launch php code sniffer

- CTRL + W then (key) -> Align lines on key, check on AlignPlugin
