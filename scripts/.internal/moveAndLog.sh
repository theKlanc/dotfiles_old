#!/bin/sh
echo `realpath $1` >> /tmp/moveOrigin.txt
#here we check whether the destination is a folder or a file
if [[ -d "$2" ]]; then
    echo "$2 is a directory"
    result=`realpath $2`/`basename $1`
    echo $result >> /tmp/moveDest.txt
else
    echo "$2 must be a file"
    echo `realpath $2` >> /tmp/moveDest.txt
fi
mv "$1" "$2"
