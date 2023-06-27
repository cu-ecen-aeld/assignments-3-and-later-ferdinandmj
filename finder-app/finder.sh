#!/bin/bash

filesdir=$1
searchstr=$2
if [ $# -ne 2 ]
then
    echo "Either path or search string is missing"
    exit 1
fi

if [ ! -d "$filesdir" ]
then
    echo "Directory does not exist"
    exit 1
fi

cd "$filesdir"
files=$(ls -R)


total_count=0
count=0
file_count=0

for file in $files
do
    if [ -f $file ]
    then
        echo "$file"
        count=$(grep -c "$searchstr" "$file")
        if [ "$count" -gt 0 ]
        then
            file_count=$((file_count + 1))
        fi
        total_count=$(($total_count + $count))
    fi
done

echo "The number of files are "$file_count" and the number of matching lines are "$total_count""
