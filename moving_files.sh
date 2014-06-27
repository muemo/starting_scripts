#!/usr/bin/env bash

echo "mint oder pac?" 
read ALI
cp .bashrc .tmux.conf .vimrc ~/
cp .bash_aliases_${ALI} ~/.bash_aliases
echo 'source ~/.bashrc' > ~/.bash_profile
