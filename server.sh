#!/bin/bash

#NVIMSERVERPORT=$1
# NVIMPATH=$2
#
# 1=""
# 2=""
#
# echo "Listening Neovim on server \"localhost:$NVIMSERVERPORT\""
#
# $NVIMPATH --headless --listen localhost:$NVIMSERVERPORT "$@"
echo "$@"
$("$@")
