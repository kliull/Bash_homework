#!/bin/bash
way=$1
countfiles=0
countdirectory=0
maxsize=0
maxfile=""

for file in $(find "$way" -type f); do
    countfiles=$((countfiles + 1))
done
for file in $(find "$way" -type d); do
    countdirectory=$((countdirectory + 1));
done

for file in $(find "$way" -type f); do
  size=$(stat -c%s "$file")
  if [ "$size" -gt "$maxsize" ]; then
    maxsize=$size
    maxfile=$file
  fi
done
echo $countfiles
echo $countdirectory
echo $maxfile $maxsize
