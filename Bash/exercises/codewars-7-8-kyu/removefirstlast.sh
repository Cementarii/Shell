#!/bin/bash

ARG="$1"

[[ ${#ARG} -le 2 ]] && echo '' || echo ${ARG:1:-1}

