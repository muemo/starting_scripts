#!/usr/bin/env bash

#echo "mint oder pac?" 
#read ALI

for i in ~/.bash_profile ~/.bashrc ~/.tmux.conf ~/.vimrc ~/.inputrc; do 
	if [ -e $i ]; then
		mv ${i} ${i}.backup
	fi
done

cp .bashrc .tmux.conf .vimrc .inputrc ~/
#cp .bash_aliases_${ALI} ~/.bash_aliases
echo 'source ~/.bashrc' > ~/.bash_profile
