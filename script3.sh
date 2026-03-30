#!/bin/bash

DIRS="/etc /var/log /home /usr/bin /tmp"

echo "================================="
echo "       Directory Audit Report"
echo "================================="

for DIR in $DIRS
do
    if [ -d "$DIR" ]; then
        PERM=$(ls -ld $DIR | awk '{print $1}')
        OWNER=$(ls -ld $DIR | awk '{print $3}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERM | Owner: $OWNER | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "================================="
