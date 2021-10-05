#!/bin/bash

if $1 != 'A-Z'
then
    du -a | sort -s
    echo "Speicher Sortierung"
else
    du -a | sort
    echo "Alphabetische Sortierung"
fi