StephPY neoVIM config
==================

# Installation

- [neovim](https://neovim.io/) :rocket:
- [vimplug](https://github.com/junegunn/vim-plug) because it's the vim package manager :package: 
- [fzf](https://github.com/junegunn/fzf) :heart:
- [ripgrep](https://github.com/BurntSushi/ripgrep) to search as fast as :flashlight: in your project files
- composer ... it has to be accessible through ̀̀`composer xxx` in your shell.


You can backup your neovim directory (~/.config/nvim) then:

```
cd ~/.config
git clone https://github.com/stephpy/vim-config.git nvim
```

You should create your own init.local.vim, and you have to edit values inside or add your owns.

```
cp ~/.config/nvim/init.local.vim.dist ~/.config/nvim/init.local.vim
```

Then, ... install plugins with:

```
vim +PlugInstall
```

You can look at init.vim to see keyboard mapping.

:beers:
