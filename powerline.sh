#!/bin/bash

cd

sudo apt install -y git python3-pip
sudo pip3 install git+git://github.com/Lokaltog/powerline

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

sudo mv PowerlineSymbols.otf /usr/share/fonts/
fc-cache -vf /usr/share/fonts/
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
export TERM=”screen-256color” 

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh


sudo add-apt-repository ppa:pi-rho/dev
sudo apt update -y
sudo apt install -y tmux

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# colorschemes for vim
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

cd ~/dotfiles/

cp -t ~/ .vimrc .tmux.conf .bashrc

source .bashrc
