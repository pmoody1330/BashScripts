#!/bin/bash

FILES=$(ls -A)
echo $FILES
for FILE in $FILES
do
 chmod 755 $FILE
done
