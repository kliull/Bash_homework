#!/bin/bash
way=$1
for file in $(find "$way" -type f); do
    chmod 640 "$file"
done
