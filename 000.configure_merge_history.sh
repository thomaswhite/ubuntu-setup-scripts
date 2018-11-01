#!/usr/bin/env bash

sudo apt-get -qq -y install etckeeper
sudo apt-get -qq -y install git rsync wget curl gdebi

# very first run
if  [ ! -f ~/.bash_functions ]; then
   cp -fvr 2copy/home ~
   wget https://raw.githubusercontent.com/pts/pts-merge-history-bash/master/merge_history.bash -o "$HOME/merge_history.bash"
   touch ~/.merged_bash_history
   # http://ptspts.blogspot.co.uk/2011/03/how-to-automatically-synchronize-shell.html
else
   rsync  -avu  --include ".*"  2copy/home/  ~/
fi
