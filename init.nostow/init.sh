#!/bin/bash

STOWFILE_ROOT=$(pwd)/..
STOW_TARGET=$HOME

cd "$STOWFILE_ROOT"

for stowd in *; do
    stow --ignore '.*nostow.*' --restow -vv --target-dir "$STOW_TARGET" "$stowd"
done
