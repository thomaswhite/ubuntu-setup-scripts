#!/bin/bash

FILES=./*.sh
for f in $FILES; do
  echo "Processing $f"
  if [ "$f" != "$0" ] ; then
    names=$(cat $f | grep install 2>/dev/null  | grep "^[^#;]"  2>/dev/null  | grep -vE "echo|sudo snap"  2>/dev/null   |  tr '\n' ' '| tr ' ' '\n' | grep  "^[^-#$\"]" 2>/dev/null  | grep -vE "apt |apt-fast|apt-get|.txt|install|\*|sudo" 2>/dev/null  | sort -u)
    desc=''
    if [  ! -z "$names" ]; then
      for n in $names; do
           desc=$(apt show $n 2>/dev/null | grep Description: 2>/dev/null )
           printf "%-25s " $n
           echo "# ${desc:12}"
      done
     fi
   fi
done
