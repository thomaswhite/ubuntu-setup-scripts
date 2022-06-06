# Adding submodules in WebStorm

 1. In the main project directory:
 Only the first time
 * git submodule add https://github.com/thomaswhite/ununtu_build_image_apps.git build
 * git submodule add https://github.com/thomaswhite/ubuntu-bash-files.git 2copy/home
 * git commit -m "add submodules"

When you checkout on a new box
 * git submodule update --init --recursive
 * go to every submodule directory and run: git checkout master 
 

 2. In WebStorm 
 * open Settings > Version Control
 * Click on every module directory from the list and click button <+> to add it.
 * Push the changelist.

 Now all submodules are connected properly to their origins.



