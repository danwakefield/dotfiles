#!/bin/bash

function 4cdl {
    thread_url=$1
    folder_name=$(echo "$thread_url" | awk -F/ '{print $6 "-" $7}')

    if [[ $folder_name == "-" ]]; then
        folder_name="$RANDOM$RANDOM"
    fi

    cd "$HOME/images/4chan"
    mkdir ${folder_name}
    cd ${folder_name}

    image_urls=($(wget -O - "$thread_url" \
                    | tr ">" "\n" \
                    | \grep "i.4cdn.org" \
                    | \grep "fileThumb" \
                    | awk -F\" '{print $4}' \
                    | sed "s/^\/\///"))

    IFS=$'\n'
    for img in ${image_urls[*]}; do
        wget --no-clobber "http://$img"
    done
}
