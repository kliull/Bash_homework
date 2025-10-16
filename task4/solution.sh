#!/bin/bash
way=$1
for file in $(find "$way" -type f); do
    chmod 640 "$file"
done

for dir in $(find "$way" -type d); do
    chmod 750 "$dir"
done
