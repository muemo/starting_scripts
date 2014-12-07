#!/usr/bin/env bash


for i in ~/.bash_profile ~/.bashrc ~/.tmux.conf ~/.vimrc ~/.inputrc; do 
	if [ -e $i ]; then
		mv ${i} ${i}.backup
	fi
done

cp .bashrc .tmux.conf .vimrc .inputrc ~/
echo 'source ~/.bashrc' > ~/.bash_profile
