#!/bin/bash

writefile=$1
writestr=$2
dir=$(dirname "$writefile")

if [ $# -ne 2 ]
then
    echo "Either file or input string is missing"
    exit 1
fi

if [ ! -d "$dir" ]
then
    mkdir "$dir"
fi

touch "$writefile"
echo "$writestr" >| "$writefile"

