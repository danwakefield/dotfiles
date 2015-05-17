#!/bin/bash

STOWFILE_ROOT=$(pwd)/..
STOW_TARGET=$HOME

cd "$STOWFILE_ROOT"

for stowd in *; do
    stow --ignore '.*nostow.*' --restow -vv --target-dir "$STOW_TARGET" "$stowd"
    rc=$?
    if $rc; then
        echo "--- $stowd installed successfully ---"
    else
        echo "!!! $stowd failed to instal !!!"
    fi
done
