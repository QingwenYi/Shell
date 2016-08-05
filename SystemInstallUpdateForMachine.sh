#!/bin/bash
HOME="/home/turtle"
VimFile="$HOME/.vimrc"
QtCreatorFile="qt-opensource-linux-x64-5.5.0-2.run"
Password="123456"
echo "start"
echo $Password | sudo -S apt-get update
echo $Password | sudo -S apt-get install vim -y
echo $Password | sudo -S apt-get install g++ -y
echo $Password | sudo -S apt-get install libgl1-mesa-dev -y
#sudo apt-get install eclipse-cdt
echo $Password | sudo -S apt-get install nautilus-open-terminal -y
nautilus -q
echo $Password | sudo -S apt-get install git -y
echo $Password | sudo -S apt-get install gitk -y
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
	echo "let g:SuperTabRetainCompletionType=2" >> $VimFile
fi
echo "Vimrc configure finished"
chmod 777 $QtCreatorFile
./$QtCreatorFile
echo "System update Finished"
