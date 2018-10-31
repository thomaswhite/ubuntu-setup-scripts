#!/usr/bin/env bash

if [ ! -f build_env_setup.bash ]; then
   wget -q http://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/bin/build_env_setup.bash
   sudo chmod +x build_env_setup.bash
fi

source build_env_setup.bash