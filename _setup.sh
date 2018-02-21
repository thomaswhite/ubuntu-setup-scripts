#!/usr/bin/env bash

download_path="$HOME/tmp"
download_deb="$download_path/deb"

# pushd "$download_path"
#    wget -q -N https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_ppa-deb
    source ./2copy/home/.bash_functions_ppa-deb
#    wget -q -N https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_git
    source ./2copy/home/.bash_functions_git
# popd


echo =========================== " $(date +%Y-%m-%d:%H:%M:%S) ${0##*/} "