#!/bin/bash

duplicatefind ()
{
    find . ! -empty -type f -exec md5sum {} + | sort | uniq -w32 -dD 
}