#!/usr/bin/env bash

source _setup.sh

#sudo apt-get -qq -y install etckeeper
sudo apt-get -qq -y install git rsync wget curl gdebi

# very first run
if  [ ! -f $HOME/merge_history.bash ]; then
    wget -q -N https://raw.githubusercontent.com/pts/pts-merge-history-bash/master/merge_history.bash -O $HOME/merge_history.bash
fi
    
if  [ ! -f ~/.merged_bash_history ]; then
   cp $HOME/.bash_history $HOME/.merged_bash_history
fi
touch $HOME/.merged_bash_history
