#!/bin/bash
#Ask for the clientcode
#echo Please enter the \#ClientCode\#
read -p 'Please enter the #ClientCode#: ' ClientCode
echo $ClientCode servers:
aws ec2 describe-instances --output text --query "Reservations[*].Instances[*].Tags[?Key=='Name'].Value" --filters "Name=tag:$ClientCode,Values=clientcode"