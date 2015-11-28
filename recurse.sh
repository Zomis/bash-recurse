#!/bin/bash

RUN_SCRIPT="~/recursescript/example/filecheck.sh"

recurseCheck()
{
   PREV_DIR=`pwd`
   if [ -d $1 ]; then
      echo "Recursing $1..."
      cd $1
      eval $RUN_SCRIPT
      echo "Result in $1 was $?"
      cd $PREV_DIR
      echo "End $1"
   fi
}

START_DIR=`pwd`
echo "Start directory is $START_DIR"

ALL_FILES=**/*
echo "All files $ALL_FILES"

for f in **/* ; do
   recurseCheck $f
done;

