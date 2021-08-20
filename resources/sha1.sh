#!/bin/bash

if [ -z "$1" ]; then
    echo "usage: sh sha1.sh /path/to/file"
    exit
fi

echo "sha1 of $1"
FILEPATH=$1
FILENAME=$(basename "$FILEPATH")
FILESIZE=$(stat -c%s "$FILEPATH")
SHA1SUM=$(sha1sum "$FILEPATH" | cut -f1 -d' ')
echo "$FILENAME|$FILESIZE|$SHA1SUM"
