#!/bin/bash

user=$1

if [ -z "$user" ]; then
    echo "İstifadəçi adını 1-ci argument kimi verin!"
    exit 1
fi

ps -u "$user" -o user,pid,ppid,vsz,rss,stat,start,time,cmd | grep -v " 0 0 "#!/bin/bash

user=$1

if [ -z "$user" ]; then
    echo "İstifadəçi adını 1-ci argument kimi verin!"
    exit 1
fi

ps -u "$user" -o user,pid,ppid,vsz,rss,stat,start,time,cmd | grep -v " 0 0 "
