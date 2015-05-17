#!/bin/bash
#
# Fix GPG key errors.

sudo apt-get update 2>&1 1>/dev/null \
    | grep "W: GPG" \
    | cut -d: -f6 \
    | tr ' ' '\n' \
    | grep -v '^$' \
    | grep -v '^N' \
    | xargs -I{} sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys {}
