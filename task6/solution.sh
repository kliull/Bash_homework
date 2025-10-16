#!/bin/bash
ps -u "$USER" -o pid,%mem,comm --sort=-%mem
