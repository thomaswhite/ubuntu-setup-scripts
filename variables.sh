#!/usr/bin/env bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
download_path="$HOME/tmp"
download_deb="$download_path/deb"
build_path="$download_path/buld"

mkdir -p $download_deb
mkdir -p $build_path
