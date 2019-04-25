#!/usr/bin/env sh
# interfaces with a go based 
# cli application for google tasks
cd ~/go/src/todotasks/
./quickstart | sed 's/^/[0] /' > /tmp/temptasks.txt

# print the lines from f1 that are not in f2
grep -v -x -f ~/.calcurse/todo /tmp/temptasks.txt
