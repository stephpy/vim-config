if [ -d $HOME/.vim ] || [ -h $HOME/.vim ]
then
    echo '.vim file already exists, backup it ? (y/n)' && read response && \
    if [ "$response" == "y" ]
    then
        mv -rf $HOME/.vim $HOME/.vim.$today
    else
        rm -rf $HOME/.vim
    fi
fi

if [ -f $HOME/.vimrc ] || [ -h $HOME/.vimrc ]
then
    echo '.vimrc file already exists, backup it ? (y/n)' && read response && \
    if [ "$response" == "y" ]
    then
        mv $HOME/.vimrc $HOME/.vimrc.$today
    else
        rm $HOME/.vimrc
    fi
fi

if [ -d $HOME/vim-config ]
then
    echo 'vim-config file already exists, backup it ? (y/n)' && read response && \
    if [ "$response" == "y" ]
    then
        mv $HOME/vim-config $HOME/vim-config.$today
    else
        rm -rf $HOME/vim-config
    fi
fi


echo "\033[0;34mCloning Vim config\033[0m"

/usr/bin/env git clone git://github.com/stephpy/vim-config.git $HOME/vim-config

echo "\033[0;34mUpdate submodules\033[0m"

cd $HOME/vim-config
git submodule init
git submodule update

ln -s $HOME/vim-config/.vim $HOME/.vim
ln -s $HOME/.vim/.vimrc $HOME/.vimrc

echo "\033[0;32m"'       .__          '"\033[0m"
echo "\033[0;32m"' ___  _|__| _____   '"\033[0m"
echo "\033[0;32m"' \  \/ /  |/     \  '"\033[0m"
echo "\033[0;32m"'  \   /|  |  Y Y  \ '"\033[0m"
echo "\033[0;32m"'   \_/ |__|__|_|  / '"\033[0m"
echo "\033[0;32m"'                \/  '"\033[0m"

echo "\n\n \033[0;32m....is now installed.\033[0m"
echo "\n\n \033[0;32m....LAUNCH !\033[0m"

vim +BundleInstall
