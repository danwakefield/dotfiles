#!/bin/bash

STOWFILE_ROOT=$(pwd)/..
STOW_TARGET=$HOME

cd "$STOWFILE_ROOT"
declare -a failed

for stowd in *; do
    if [[ -d $stowd ]] && [[ $stowd != *nostow* ]]; then
        stow --ignore '.*nostow.*' --${1:-restow} -vv --target "$STOW_TARGET" "$stowd"
        rc=$?
        if [[ $rc -eq 0 ]]; then
            echo "--- $stowd installed successfully ---"
        else
            failed+=$stowd
            echo "!!! $stowd failed to install !!!"
        fi
    fi
done

printf "\n\nFAILED\n"
echo "${failed[*]}"
