#!/bin/bash
way="$1"

echo "Directory and size"

entries=()

for dir in $(find "$way" -type d); do
    size=$(du -sb "$dir")
    entries+=("$size $dir")
done
for entry in "${entries[@]}"; do
    echo "$entry"
done | sort -nr | head -n 4
