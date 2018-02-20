#!/bin/bash

# dev & build
sudo apt-fast -qq  -y install build-essential make autoconf automake libtool flex bison gdb libc6-dev libgcc1 cmake cmake-curses-gui pkg-config help2man checkinstall libgtk-3.0
sudo apt-fast -qq  -y install clang g++-4.8 git git-core kiki perl gcc-multilib
sudo apt-fast -qq  -y install build-essential debhelper devscripts libblkid-dev libmount-dev libncursesw5-dev libparted0-dev qtbase5-dev qttools5-dev-tools



sudo apt-fast -qq  -y install git
git config --global user.name Thomas White
git config --global user.email thomas.0007@gmail.com
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=18000'
git config --global push.default simple
sudo git config --system core.editor gedit

mkdir "$HOME/app"
wget https://download-cf.jetbrains.com/webstorm/WebStorm-2016.2.4.tar.gz -O "$HOME/app/WebStorm-2016.2.4.tar.gz"
pushd "$HOME/app"
tar -xzf WebStorm-2016.2.4.tar.gz