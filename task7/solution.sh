#!/bin/bash
find -name ".*" ! -name "." ! -name ".." \( -type f -o -type d \) | sort
