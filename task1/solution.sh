#!/bin/bash
way=$1
string1=$2
string2=$3

for file in $(find "$way" -type f -name "*.txt" ); do
    sed -i "s/$string1/$string2/g" "$file"
done
