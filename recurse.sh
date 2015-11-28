#!/bin/bash

RUN_SCRIPT="~/recursescript/example/filecheck.sh"

#recurseCheck()
#{
#   if [ -d $1 ]; then
#      echo $1
#      ls
#      exec SCRIPT
#   fi
#}

for f in **/* ; do
#   recurseCheck($f)
   echo $f
done;
