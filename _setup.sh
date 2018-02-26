#!/usr/bin/env bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
download_path="$HOME/tmp"
download_deb="$download_path/deb"
build_path="$download_path/buld"

mkdir -p $download_deb
mkdir -p $build_path

pushd $download_path

if  [  ! declare -F git_clone_or_checkout  ]; then
  wget -nv -N https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_git
  source .bash_functions_git
fi

if  [  ! declare -F ppa_add  ]; then
  wget -nv -N https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/.bash_functions_ppa-deb
  source .bash_functions_git
fi

popd
echo =========================== " $(date +%Y-%m-%d:%H:%M:%S) ${0##*/} " ===================================