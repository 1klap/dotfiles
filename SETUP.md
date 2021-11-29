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
$ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash
$ mkdir -p "$(rbenv root)"/plugins
$ git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
$ rbenv install -l
$ rbenv install 3.0.3
$ rbenv global 3.0.3

# ruby on rails prereq
### install nvm
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash 
### install node
$ nvm install --lts
$ nvm install 14.18.1
### install python (for yarn)
$ sudo apt install python2 
### install yarn
$ npm install -g yarn 
$ yarn install --check-files
### install foreman
$ npm install -g foreman
### install postgres
$ sudo apt install postgresql postgresql-contrib libpq-dev
### install ruby language server
$ gem install solargraph

# tmux
$ sudo apt install tmux
