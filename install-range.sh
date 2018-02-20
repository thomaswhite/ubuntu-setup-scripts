#!/bin/bash

#for file in $(ls -v $1[0-9][0-9]*.sh) ; do
for file in $(ls -v $1*.sh) ; do
  ./$file
done

