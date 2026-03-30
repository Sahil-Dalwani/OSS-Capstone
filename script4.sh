#!/bin/bash

LOGFILE="testlog.txt"
KEYWORD="error"

COUNT=0

echo "=============================="
echo "       Log File Analyzer"
echo "=============================="

while read LINE
do
    if echo "$LINE" | grep -i "$KEYWORD" > /dev/null
    then
        COUNT=$((COUNT+1))
    fi
done < $LOGFILE

echo "Keyword '$KEYWORD' found $COUNT times."

echo "Recent occurrences:"
grep -i "$KEYWORD" $LOGFILE | tail -5
