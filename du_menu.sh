#!/bin/bash
# choose which tool to show disk usage

choice=$(dialog --clear --backtitle "du cli options" --title "Select Disk Usage dislpay tool" --menu "Choose one of the following options:" 15 40 4 \
1 "du" \
2 "duf" \
3 "dust" \
2>&1  >/dev/tty)
clear
case $choice in
    1)
        du -h;;
    2)
        duf;;
    3)
        dust;;
esac