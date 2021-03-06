#!/bin/bash
HOME="/home/qwyi"
GitFile="$HOME/.git-credentials"
VimFile="$HOME/.vimrc"
Password="123456"
echo "start"
echo $Password | sudo -S apt-get update
echo $Password | sudo -S apt-get install vim -y
echo $Password | sudo -S apt-get install g++ -y
# for Qt
echo $Password | sudo -S apt-get install libgl1-mesa-dev -y
# Find funtion relative connect for code
echo $Password | sudo -S apt-get install doxygen-gui -y
echo $Password | sudo -S apt-get install Graphviz -y
#sudo apt-get install eclipse-cdt
echo $Password | sudo -S apt-get install nautilus-open-terminal -y
nautilus -q
echo $Password | sudo -S apt-get install git -y
echo $Password | sudo -S apt-get install gitk -y
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
	echo "let g:SuperTabRetainCompletionType=2" >>$VimFile
fi
echo "Vimrc configure finished"
echo "System update Finished"
