#!/bin/sh

DOW=$(date +%u)   # 1=Monday ... 7=Sunday
HOUR=$(date +%H)

if [ "$DOW" -eq 6 ] && [ "$HOUR" -gt 20 ]; then
    exit 0
elif [ "$DOW" -eq 7 ] && [ "$HOUR" -lt 16 ]; then
    exit 0
else
    exit 1
fi
