#! /bin/sh

# This basic script uses symlinks to install my dotfiles
# on the current session

# To run it, chdir inside the repository, and execute ./install.sh


cd $HOME
ln -s $OLDPWD/dotfiles/vimrc .vimrc 
ln -s $OLDPWD/dotfiles/vim .vim 
ln -s $OLDPWD/dotfiles/zshrc .zshrc 
ln -s $OLDPWD/dotfiles/zsh .zsh 
ln -s $OLDPWD/dotfiles/gitconfig .gitconfig 
ln -s $OLDPWD/dotfiles/bashrc .bashrc 
