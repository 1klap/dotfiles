# basics, setup access
### Setup for Ubuntu (tested with 21.10)
$ sudo apt install curl git
$ ssh-keygen
### Add key to gitolite keydir

# dotfiles
$ git clone git@heartforge.eu:dotfiles
$ cd dotfiles
$ chmod +x install
$ ./install
$ nano ~/.gitconfig_local
### Add the following
```
[user]
	name = Kim Laplume
	email = kim.laplume@protonmail.com
```

# dev env
### install neovim
```bash
$ wget --quiet https://github.com/neovim/neovim/releases/latest/download/nvim.appimage --output-document nvim
$ chmod +x nvim
$ sudo chown root:root nvim
$ sudo mv nvim /usr/bin
$ sudo ln -s /usr/bin/nvim /usr/bin/vim
```
### install vim-plug
$ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
### run inside nvim
:PlugInstall

# ruby
$ sudo apt install rbenv
