#!/bin/bash 
function quit {
exit
}
function countString {
Var=$1
#echo "There are ${#Var} charcters in the sentence above."
printf "There are ${#Var} characters in your sentence that was passed to this function." "${Var}"
}
