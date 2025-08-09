#!/bin/bash
# Check if user argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USER=$1

# Show processes for the given user, excluding VSZ=0 and RSS=0
ps -u "$USER" --no-headers -o user,pid,pcpu,pmem,vsz,rss,stat,start,time,cmd | grep -v " 0 0 "
