#!/bin/bash
file=$1

infocount=$(grep "INFO" "$file")
errorcount=$(grep "ERROR" "$file")
warncount=$(grep "WARN" "$file")

echo "INFO.*$infocount"
echo "ERROR.*$errorcount"
echo "WARN.*$warncount"
