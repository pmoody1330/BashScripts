#!/bin/bash
source /home/pmoody/Documents/Bash/functions.sh
read -p 'Please enter the text to be counted: ' VAR
#VAR='Testing calling a function from another script'
echo "$VAR"
countString "$VAR"
quit
