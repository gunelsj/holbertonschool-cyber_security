##!/bin/bash
ps -u "$1" -o user,pid,ppid,vsz,rss,stat,start,time,cmd | grep -v " 0 0 "1~#!/bin/bash
