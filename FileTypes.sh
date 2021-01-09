#!/bin/bash
find . -type f -name "*.*" | grep -o -E "\.[^\.]+$" | grep -o -E "[[:alpha:]]{2,16}" | awk '{print tolower($0)}' | sort | uniq --count 
