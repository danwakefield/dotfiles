#!/bin/zsh

source "$HOME/.config/ohmyzsh/plugins/extract/extract.plugin.zsh"

DIR_NAME="$HOME/tmp/$(date -I)"
DOWNLOAD_DIR="$HOME/downloads/music"

mkdir -p ${DIR_NAME}
cd ${DIR_NAME}
mv ${DOWNLOAD_DIR}/* .
extract -r ./*
