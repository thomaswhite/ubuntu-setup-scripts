#!/bin/bash

source _setup.sh

if  [ ! -f ~/.bash_functions ]; then
   cp -v -r 2copy/home/.* ~
fi
