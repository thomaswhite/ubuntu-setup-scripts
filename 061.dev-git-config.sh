#!/usr/bin/env bash

sudo apt-fast -qq  -y install git-all git-extras gedit
git config --global github.user     thomaswhite
git config --global user.name       Thomas White
git config --global user.email      thomas.0007@gmail.com
git config --global credential.helper 'cache --timeout=18000'
git config --global push.default    simple
git config --global core.editor     gedit
git config --global web.browser     google-chrome

git config --global color.ui        auto
git config --global difftool.prompt false


sudo git config --system core.editor gedit
