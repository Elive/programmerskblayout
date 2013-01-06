#!/bin/bash

main(){
   # pre {{{
   local version

   # }}}


   xmodmap "$( ls -1 xmodmap_* | sort -g | tail -1 )"

   sleep 1
   echo -e "Please drag the first button of the mouse (selecting text) around some seconds until the selection works (keyboard fully loaded correctly)"


}

#
#  MAIN
#
main "$@"

# vim: set foldmethod=marker :
