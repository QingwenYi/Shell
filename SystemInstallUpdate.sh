#!/bin/bash
HOME="/home/qwyi"
GitFile="$HOME/.git-credentials"
VimFile="$HOME/.vimrc"
echo "start"
sudo apt-get update
sudo apt-get install vim
sudo apt-get install g++
sudo apt-get install libgl1-mesa-dev
#sudo apt-get install eclipse-cdt
sudo apt-get install nautilus-open-terminal
nautilus -q
sudo apt-get install git
sudo apt-get install gitk
echo "Start configure Git"
if [ -f $GitFile ]; then
	echo ".git-credentials have existed"
else
	touch $GitFile
	echo "http://{qingwenyi}:{qwyi0628}@10.0.0.109" >> $GitFile
	git config --global credential.helper store
fi
cat ~/.gitconfig		
echo "Git configure finished"
echo "Start to configure vim"
if [ -f $VimFile ]; then
	echo ".vimrc have existed"
else
	touch $VimFile
	echo "syntax on" >> $VimFile
	echo "set number" >> $VimFile
	echo "set cursorline" >> $VimFile
	echo "set history=1000" >> $VimFile
	echo "set ruler" >> $VimFile
	echo "set hlsearch" >> $VimFile
	echo "set autoread" >> $VimFile
	echo "set paste" >> $VimFile 
fi
echo "Vimrc configure finished"
echo "System update Finished"
