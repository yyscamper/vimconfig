#!/bin/bash

# refer  spf13-vim bootstrap.sh`
BASEDIR=$(dirname $0)
cd $BASEDIR
CURRENT_DIR=`pwd`
VUNDLE_DIR=$HOME/.vim/bundle

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

echo "> backing up current vim config"
BACKUP_DIR=$HOME/backup
mkdir -p $BACKUP_DIR
today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc ; do [ -e $i ] && [ ! -L $i ] && mv $i $BACKUP_DIR/$i.$today; done
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc ; do [ -L $i ] && unlink $i ; done


echo "> setting up symlinks"
lnif $CURRENT_DIR/vimrc $HOME/.vimrc
lnif "$CURRENT_DIR/" "$HOME/.vim"

echo "> install vundle"
if [ ! -e $HOME/.vim/bundle/Vundle.vim ]; then
    echo "Installing Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR/Vundle.vim
else
    echo "Upgrade Vundle"
    cd "$VUNDLE_DIR/Vundle.vim" && git pull origin master
fi

echo "> update/install plugins using Vundle"
system_shell=$SHELL
export SHELL="/bin/sh"
vim +PluginInstall! +PluginClean +qall
export SHELL=$system_shell

echo "> install snippets"
cp -r $CURRENT_DIR/UltiSnips $HOME/.vim

echo "> install dependancy"
sudo apt-get install -y silversearcher-ag  # This is what vim-ag needs
npm install -g jslint jshint esctags
pip intsall pylint

echo "> compile YouCompleteMe"
echo "It will take a long time, just be patient!"
echo "If error,you need to compile it yourself"
cd $VUNDLE_DIR/YouCompleteMe/
bash -x install.py --clang-completer --tern-completer

echo "**** Install Done! ****"
