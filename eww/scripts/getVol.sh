#!/usr/bin/env bash


volume=$(echo $(wpctl get-volume @DEFAULT_SINK@) | grep -Po 'Volume:\s\K\d+\.\d+')
volume_percentage=$(awk "BEGIN {print $volume*100}")
echo "$volume_percentage%"
