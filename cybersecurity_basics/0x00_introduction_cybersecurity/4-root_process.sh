#!/bin/bash
# Script monitors all processes started by the specified user

# 1-ci arqument istifadəçini göstərir
USER_NAME=$1

# İstifadəçi adı verilməyibsə çıxış et
if [ -z "$USER_NAME" ]; then
    echo "Istifadechi adi daxil edin."
    exit 1
fi

# Prosesi göstər, VSZ və RSS 0 olanları çıxart
ps -u "$USER_NAME" -o user,pid,vsz,rss,tty,stat,start,time,command | \
grep -vE '\s0\s+0\s'

