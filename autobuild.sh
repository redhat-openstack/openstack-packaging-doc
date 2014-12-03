#!/bin/sh
# A script to automatically generate docs on source changes.

inotifywait -e modify -m . |
while read dir ev file; do
    if echo "$file" | grep -q '\.txt$'; then
        dfile=$(echo "$file" | sed 's/\.txt$/.html/')
        make "$dfile"
    fi
done
