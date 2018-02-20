#!/usr/bin/env bash
 cd $HOME
 git clone git@github.com:thomaswhite/ubuntu-17-10-setup.git
# git clone https://github.com/thomaswhite/ubuntu-17-10-setup.git
 pushd $HOME/ubuntu-17-10-setup
 git submodule update --init --recursive
 popd

