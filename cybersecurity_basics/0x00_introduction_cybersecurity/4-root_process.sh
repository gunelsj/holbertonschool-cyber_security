#!/bin/bash
ps -u "$1" -o user,pid,pcpu,pmem,vsz,rss,tty,stat,start,time,cmd | grep -v CMD > process_list.txt
