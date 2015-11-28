#!/bin/bash

RUN_SCRIPT="~/recursescript/example/filecheck.sh"

recurseCheck()
{
  echo "Start recurse in $1"
  local f
  for f in $1/* ; do
    local PREV_DIR=`pwd`
    echo "Testing file $f"
    if [ -d $f ]; then
      echo "Directory $f..."
      cd $f
      eval $RUN_SCRIPT
      local RESULT=$?
      echo "Result in $f was $RESULT"
      recurseCheck $f
      cd $PREV_DIR
      echo "End $f"
    fi
  done;
}

START_DIR=`pwd`
echo "Start directory is $START_DIR"

recurseCheck $START_DIR

