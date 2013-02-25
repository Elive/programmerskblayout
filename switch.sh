#!/bin/bash

main(){
   # pre {{{
   local version

   # }}}


   echo -e "Please wait..." # by some reason this is slow on e17
   #sleep 1
   source /etc/default/keyboard
   case $XKBLAYOUT in
       es)
           setxkbmap "$XKBLAYOUT"
           ;;
       us|*)
           # some keyboards like US one needs to enable the "altgr" option specifically
           setxkbmap -variant altgr-intl "$XKBLAYOUT"
   esac

   # set our special kb settings
   xmodmap "$( ls -1 xmodmap_* | sort -g | tail -1 )"

   #sync
   #echo -e "Done (or almost)"

   sleep 1
   #echo -e "Please drag the first button of the mouse (selecting text) around some seconds until the selection works (keyboard fully loaded correctly)"
   echo -e "Done, keyboard layout updated"


}

#
#  MAIN
#
main "$@"

# vim: set foldmethod=marker :
