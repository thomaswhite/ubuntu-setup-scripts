#!/usr/bin/env bash

sudo apt-fast -qq  -y install snapd

sudo snap install bundler-mardy  cloudcompare cmvs-mardy colmap-mardy gifcurry line3dpp-mardy meshlab-mardy mve-mardy mvs-texturing-mardy openmvs-mardy theia-mardy visualsfm-mardy

# utilites
sudo snap install  simplescreenrecorder-mardy

# audio
sudo snap install gnome-easytag spotify

sudo snap install vectr
sudo snap install blender --clasic

# internet
sudo snap install chromium whatsdesk
sudo snap install opera-developer --edge