#!/usr/bin/env bash

if ![[ $(type -t ppa-add) == function ]]; then
    for f in  2copy/home/.bash_functions* ; do source $f; done
fi
