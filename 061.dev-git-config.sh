#!/usr/bin/env bash

sudo apt-fast -qq  -y install git-all git-extras
git config --global user.name Thomas White
git config --global user.email thomas.0007@gmail.com
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=18000'
git config --global push.default simple
sudo git config --system core.editor gedit
