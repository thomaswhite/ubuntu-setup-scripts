#!/bin/bash

source _setup.sh

wget -N -q -P $HOME https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_aliases
wget -N -q -P $HOME https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_colours
wget -N -q -P $HOME https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions
wget -N -q -P $HOME https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions
wget -N -q -P $HOME https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_dir
wget -N -q -P $HOME https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_git
wget -N -q -P $HOME https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_ppa-deb
wget -N -q -P $HOME https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_print

for f in ~/.bash_functions* ; do source $f; done

