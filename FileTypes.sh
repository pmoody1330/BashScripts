#!/bin/bash
find . -type f | perl -ne 'print $1 if m/\.([^.\/]+)$/' | sort -u
