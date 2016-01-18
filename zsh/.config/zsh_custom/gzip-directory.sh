#!/bin/bash

function gzipd {
	if [[ -z $1 ]]; then
		echo "gzipd requires a folder/file to compress"
		return 1
	fi
	gzipd_output="$(basename $1)-$(date -I).tgz"

	which pigz > /dev/null
	if [[ $? == 0 ]]; then
		tar -c "$1" | pigz -c > "$gzipd_output"
	else
		echo "Using tar, Install pigz to speed up gzipd"
		tar -czvf "$gzipd_output" "$1"
	fi
}
