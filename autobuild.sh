#!/bin/sh
# A script to automatically generate docs on source changes.

inotifywait -e modify -m doc |
while read dir ev file; do
    if echo "$file" | grep -q '\.txt$'; then
        make
    fi
done
