#!/bin/sh

set -e
set -u
writefile=$1
writestr=$2
if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

mkdir -p "$(dirname "$writefile")"

echo "$writestr" > "$writefile" 