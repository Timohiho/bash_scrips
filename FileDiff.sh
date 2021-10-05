#!/bin/bash
# Script: FileDiff.sh
# Execute: FileDiff.sh file1 file2

f1="$1";
f2="$2";

good="√";
bad="x";

far1=("")
far2=("")

while IFS= read -r line
do
    fa1+=("$line")
done < "$file1"

while IFS= read -r l
do
    fileArray2+=("$l")
done < "$f2"

for i in "${!far1[@]}" 
do
    l1="${far1[$i]}"
    l2="${far2[$i]}"
    if [ "$l1" = "$l2" ]; then
    echo "$good $l1 $l2"
    else
    echo "$bad $l1 $l2"
    fi
done