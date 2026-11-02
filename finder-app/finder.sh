#!/bin/sh

set -e
set -u

filesdir=$1
searchstr=$2
if [ -z "$filesdir" ] || [ -z "$searchstr" ]; then 
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory"
    exit 1
fi


X=$(find "$filesdir" -type f 2> /dev/null | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" 2> /dev/null | wc -l)
echo "The number of files are $X and the number of matching lines are $Y"

