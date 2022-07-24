#!/bin/bash

INPATH="/usr/bin"

BINLS=" $(ls $INPATH) "

if [[ $BINLS == *"nvide"* ]]; then
    echo "Uninstalling nvide..."
    if [[ $BINLS == *"nvide"* ]]; then
        sudo rm "$INPATH/nvide"
        echo "$INPATH/nvide - ✓"
    else
        echo "$INPATH/nvide - ✕ (File not found)"
    fi
    if [[ $BINLS == *"nvidecfg"* ]]; then
        sudo rm -rf "$INPATH/nvidecfg/"
        echo "$INPATH/nvidecfg/ - ✓"
    else
        echo "$INPATH/nvidecfg/ - ✕ (Directory not found)"
    fi
else
    echo "Nvide is already uninstalled"
fi
