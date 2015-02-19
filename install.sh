#! /bin/sh

# This basic script uses symlinks to install my dotfiles
# on the current session

# To run it, chdir inside the repository, and execute ./install.sh


cd $HOME
ln -s $OLDPWD/.vimrc .
ln -s $OLDPWD/.vim .
ln -s $OLDPWD/.zshrc .
ln -s $OLDPWD/.zsh .
ln -s $OLDPWD/.Xdefaults .
ln -s $OLDPWD/.gitconfig .
ln -s $OLDPWD/.bashrc .
