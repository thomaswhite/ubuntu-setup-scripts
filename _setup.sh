#!/usr/bin/env bash

if [ ! -f build_env_setup.bash ]; then
   wget -q https://raw.githubusercontent.com/thomaswhite/ubuntu-bash-files/master/bin/build_env_setup.bash
fi

source build_env_setup.bash