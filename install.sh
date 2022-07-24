#!/bin/bash

INPATH="/usr/bin"

BINLS=" $(ls $INPATH) "
PWDLS=" $(ls $PWD) "

if [[ $BINLS == *"nvide"* ]]; then
    echo "Nvide is already installed"
else
    echo "Checking files..."
    if [[ $PWDLS == *"nvide.py"* ]]; then
        echo "./nvide.py - ✓"
    else
        echo "./nvide.py - ✕"
        exit 404
    fi
    if [[ $PWDLS == *"server.sh"* ]]; then
        echo "./server.sh - ✓"
    else
        echo "./server.sh - ✕"
        exit 404
    fi
    if [[ $PWDLS == *"config.json"* ]]; then
        echo "./config.json - ✓"
    else
        echo "./config.json - ✕"
        exit 404
    fi

    echo "Installing nvide to $INPATH..."

    sudo mkdir "$INPATH/nvidecfg/"
    sudo cp ./nvide.py "$INPATH/nvide"
    sudo cp ./server.sh "$INPATH/nvidecfg"
    sudo cp ./config.json "$INPATH/nvidecfg"


    LSINPATH=$(ls $INPATH)
    LSNVINPATH=$(ls "$INPATH/nvidecfg")

    if [[ $LSINPATH == *"nvide"* ]]; then
        echo "$INPATH/nvide - ✓"
    else
        echo "$INPATH/nvide - ✕"
        exit 404
    fi
    if [[ $LSNVINPATH == *"server.sh"* ]]; then
        echo "$INPATH/nvidecfg/server.sh - ✓"
    else
        echo "$INPATH/nvidecfg/server.sh - ✕"
        exit 404
    fi
    if [[ $LSNVINPATH == *"config.json"* ]]; then
        echo "$INPATH/nvidecfg/config.json - ✓"
    else
        echo "$INPATH/nvidecfg/config.json - ✕"
        exit 404
    fi

    echo "Nvide installed successfully"
    sudo chmod +x "$INPATH/nvide"
    sudo chmod +x "$INPATH/nvidecfg/server.sh"

fi
