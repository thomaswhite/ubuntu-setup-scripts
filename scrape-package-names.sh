#!/bin/bash

source /etc/os-release

echo "$ID $VERSION_ID $UBUNTU_CODENAME"
#echo "" > "scraped_packages_$ID$VERSION_ID$UBUNTU_CODENAME.txt"

FILES=./*.sh # history.txt  #

getNames () {
   local f="$1"
   names=$(cat $f | \
           grep install 2>/dev/null  | \
           tr ';' '\n'| \
           tr ',' '\n'| \
           grep "^[^#]"  2>/dev/null  | \
           sed -e "s/#.*$//g" | \
           grep -vE "echo|sudo snap|add-apt-repository"  2>/dev/null   |  \
           tr '\n' ' '|   tr ' ' '\n' | \
           grep  "^[^-#$\"]" 2>/dev/null  | \
           grep -vE "apt |apt-fast|apt-get|.txt|install|\*|sudo|--help|--reinstall|history|grep|-qq|-y" 2>/dev/null  | \
           sort -u \
           )
   echo $names
}

descriptions () {
  local names="$1"
  for n in $names; do
     desc=$(apt show $n 2>/dev/null | grep Description: 2>/dev/null )
     if [ ! -z "$desc" ] ; then
       desc2="${desc:12}"
       printf "sudo apt-fast -y -qq install %-30s # %-60s \n" "$n" "$desc2"
       #echo "sudo apt-fast -y -qq install %-30s # %-60s \n" "$n" "$desc2" >> "scraped_packages_$ID$VERSION_ID$UBUNTU_CODENAME.txt"
     else
       echo "# $n"
     fi
   done
}

for f in $FILES; do
  filename="${f%.*}"
  if [ "$f" != "$0" ] ; then
    names="$( getNames $f )"

    if [  ! -z "$names" ]; then
       echo " "
       echo "# $f ------------------------"

      #echo "$names" >> scraped_packages.txt
      #echo $names > "$filename"_packages.txt

      for n in $names; do
           desc=$(apt show $n 2>/dev/null | grep Description: 2>/dev/null )
           if [ ! -z "$desc" ] ; then
             desc2="${desc:12}"
             printf "sudo apt-fast -y -qq install %-30s # %-60s \n" "$n" "$desc2"
           else
             echo "# $n"
           fi
      done
     fi
   fi
done
