#!/bin/bash

#Sites to open
#Shinkansen Storefronts
links=(
    "https://E01hosting.tessitura.com"
    "https://E02hosting.tessitura.com"
    "https://P01hosting.tessitura.com"
    "https://A01hosting.tessitura.com"
    "https://U01hosting.tessitura.com"
)

# Open links in the list.
for i in "${links[@]}"
do 
  open "$i" 
done

wait;