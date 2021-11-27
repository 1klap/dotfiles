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

