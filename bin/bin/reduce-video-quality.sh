#!/bin/bash
if [ -z "$1" ]; then
    echo "Enter the filename to convert"
    exit
fi
time avconv -i "$1" -sws_flags lanczos+accurate_rnd -vf "scale=960:540" -c:v libx264 -crf 20 -preset veryslow -profile:v main -tune fastdecode -c:a copy ${1}.downsampled.mkv
