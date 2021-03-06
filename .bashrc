# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
	  
# Erase duplicates
export HISTCONTROL=erasedups

# resize history size
export HISTSIZE=100000

# append to bash_history on quit
shopt -s histappend
export HISTCONTROL=ignorespace

# add timestamp
HISTTIMEFORMAT="%d.%m.%Y %T "

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# ln auto completion
bind TAB:complete

#autocomplete at sudo
if [ "$PS1" ]; then
complete -cf sudo
fi

# set vim as editor
export EDITOR=/usr/bin/vim

# Prompt layout
PS1='\[\033[02;32m\]\u@\H:\[\033[02;34m\]\W\$\[\033[00m\] '

# Some ls aliases
alias ls='ls --color=auto'
alias li='ls -l --color=auto'
alias l='ls -tA --color=auto'
alias la='ls -all --color=auto'
alias ll='ls -gGht --color=auto'

# Filemovment
alias mv='mv -v'
alias cp='cp -v'
# Copy backups cp -abf filename{,}
export SIMPLE_BACKUP_SUFFIX=".backup_`date +%F`"
# Other
export hpc='fcra008@hpclogin.rrz.uni-hamburg.de'
alias ..='cd ..'
alias ...='cd ../..'
alias size='du -hsc ./*'
alias cl='clear;l'
alias ssx='ssh -X'
alias hpc_cluster='sshfs fcra008@hpclogin.rrz.uni-hamburg.de:/G/scratch/fcra008 ~/hpc_cluster'
alias fc_cluster='sshfs fcra007@fc-login.rrz.uni-hamburg.de:moritz ~/fc_cluster'
alias gt='gedit'
# Resize Images for PDF
alias jpg_to_pdf='convert -density 73x73 -quality 10 -compress jpeg *jpg images.pdf'
alias ymp3='youtube-dl -f bestaudio -x -o "%(title)s.%(ext)s" --audio-format mp3'
alias ydl='youtube-dl -o "%(title)s.%(ext)s"'

#PC-spezifische Aliase
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

