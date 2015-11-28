#!/bin/bash

CURR_DIR=`pwd`
echo "Running filecheck in $CURR_DIR"
if [ -e "ok.txt" ]; then
    cat ok.txt
    exit 0
fi

if [ -e "fail.txt" ]; then
    echo "Fail found"
    exit 1
fi

if [ -e "fail2.txt" ]; then
    echo "Fail 2 found"
    exit 2
fi

exit 3

