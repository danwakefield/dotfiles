#!/bin/bash

STOWFILE_ROOT=$(pwd)/..
STOW_TARGET=$HOME

cd "$STOWFILE_ROOT"

for stowd in *; do
    if [[ -d $stowd ]] && [[ $stowd != *nostow* ]]; then
        stow --ignore '.*nostow.*' --restow -vv --target "$STOW_TARGET" "$stowd"
        rc=$?
        if [[ $rc -eq 0 ]]; then
            echo "--- $stowd installed successfully ---"
        else
            echo "!!! $stowd failed to instal !!!"
        fi
    fi
done
