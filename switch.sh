#!/bin/bash 
source $HOME/Git/git/share/tools/functions
make_environment

# Usage
if [[ -z "${1}" ]] ; then
   echo -e "Usage: $(basename $BASH_SOURCE) d (default)  v5 (version 5)"
   exit 1
fi 

main(){
   # pre {{{
   local version

   # }}}


   case $1 in
      d|default)
         setxkbmap es
         xmodmap $HOME/.Xmodmap.hhkb.Zeus
         ;;
      v*)
         version="${1#v}"
         setxkbmap es
         xmodmap $HOME/.Xmodmap.hhkb.Zeus
         xmodmap xmodmap_v${version}.0rc1.kbmap
      ;;
   esac

   sleep 1
   echo -e "Please drag the first button of the mouse (selecting text) around some seconds until the selection works (keyboard fully loaded correctly)"


}

#
#  MAIN
#
main "$@"

# vim: set foldmethod=marker : 
