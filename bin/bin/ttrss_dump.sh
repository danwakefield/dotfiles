#!/bin/bash

DUMP_NAME="ttrss_$(date -Ihours | sed 's/+.*//').bz2"
DUMP_DIR="$HOME/backup/db"

[[ -d $DUMP_DIR ]] || mkdir -p $DUMP_DIR

pg_dump -U ttrss ttrss | bzip2 > "$DUMP_DIR/$DUMP_NAME"

