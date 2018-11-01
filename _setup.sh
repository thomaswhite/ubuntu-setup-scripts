#!/usr/bin/env bash

source /etc/lsb-release # DISTRIB_ID, DISTRIB_RELEASE, DISTRIB_CODENAME, DISTRIB_DESCRIPTION
source variables.sh

pushd $download_path

#declare -F | grep ppa
# if [ -n "$(declare -F git_clone_or_checkout)"  ]; then
wget -N -q https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_git
wget -N -q https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_ppa-deb
wget -N -q https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_print
wget -N -q https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_dir

for f in ~/.bash_functions* ; do source $f; done

popd

# rulem " $(date +%Y-%m-%d:%H:%M:%S), running file: ${0##*/} "
rulem " $1 " "="