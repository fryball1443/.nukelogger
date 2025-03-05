#!/bin/bash

# alias nuke_count="grep -c $(date +\%Y) ~/nuke.log"
# nuke count script shows the number of nukes in the current year
nuke_count=$(grep -c $(date +\%Y) ~/.nukelogger/nuke.log)
nuke_last_week_count=$(grep -c "$(date -v-7d +\%Y-\%m-\%d)" ~/.nukelogger/nuke.log)
echo "Server has been nuked $nuke_count times in $(date +\%Y). Last nuke was on $(tail -n 1 ~/.nukelogger/nuke.log)"
echo "server has been nuked $nuke_last_week_count times in the last week"
