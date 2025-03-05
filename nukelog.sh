#!/bin/bash

# alias nuke_count="grep -c $(date +\%Y) ~/nuke.log"
# nuke count script shows the number of nukes in the current year
nuke_count=$(grep -c $(date +\%Y) ~/.nukelogger/nuke.log)
echo "Server has been nuked $nuke_count times in $(date +\%Y). Last nuke was on $(tail -n 1 ~/.nukelogger/nuke.log)"
