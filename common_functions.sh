#!/bin/bash

# gr (go root) -  change to the first parent directory with a '.git' directory
function gr() {
    CURRENT_DIR=$PWD
    while [ -d "$CURRENT_DIR" ]; do
        if [ ! -d "$CURRENT_DIR/.git" ]; then
            CURRENT_DIR="$CURRENT_DIR/.."
        else
            cd $CURRENT_DIR
            return;
        fi
    done
}
