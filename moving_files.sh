#!/usr/bin/env bash

echo "mint oder pac?" 
read ALI

for i in ~/.bash_profile ~/.bash_aliases ~/.bashrc ~/.tmux.conf ~/.vimrc; do 
	mv ${i} ${i}.backup
done

cp .bashrc .tmux.conf .vimrc ~/
cp .bash_aliases_${ALI} ~/.bash_aliases
echo 'source ~/.bashrc' > ~/.bash_profile
