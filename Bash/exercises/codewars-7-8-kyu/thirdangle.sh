#!/bin/bash
[[ $# -lt 2 || $1 -gt 180 || $1 -lt 0 || $2 -gt 180 || $2 -lt 0 ]] && echo "Error" && exit 1
echo $((180 - $1 - $2))
