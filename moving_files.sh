#!/usr/bin/env bash
mkdir -p ~/.dotfiles_backup

for i in ~/.bash_profile ~/.bashrc ~/.tmux.conf ~/.vimrc ~/.inputrc; do 
	if [ -e $i ]; then
		mv ${i} ~/.dotfiles_backup/${i#/*.}_`date +%F`
	fi
done

cp .bashrc .tmux.conf .vimrc .inputrc ~/
echo 'source ~/.bashrc' > ~/.bash_profile
