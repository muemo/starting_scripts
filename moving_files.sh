#!/usr/bin/env bash
mkdir -p ~/.dotfiles_backup
export SIMPLE_BACKUP_SUFFIX=".backup_`date +%F`"

for i in ~/.bash_profile ~/.bashrc ~/.tmux.conf ~/.vimrc ~/.inputrc; do 
	if [ -e $i ]; then
		cp -abf $i ~/.dotfiles_backup
		\rm -f ${i}
	fi
done

cp .bashrc .tmux.conf .vimrc .inputrc ~/
echo 'source ~/.bashrc' > ~/.bash_profile
