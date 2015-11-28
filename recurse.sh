#!/bin/bash

RUN_SCRIPT=$1

recurseCheck() {
  local f
  for f in $1/* ; do
    local PREV_DIR=`pwd`
    if [ -d $f ]; then
      cd $f
      RESULT=`eval $RUN_SCRIPT`
      local RESULT_CODE=$?
      if [ $RESULT_CODE -eq 0 ]; then
        echo "$f"
        echo "$RESULT"
        echo ""
      else
        recurseCheck $f
      fi
      cd $PREV_DIR
    fi
  done;
}

START_DIR=`pwd`
recurseCheck $START_DIR

