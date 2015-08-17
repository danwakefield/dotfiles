#!/bin/bash

function gzipd {
	if [[ -z $1 ]]; then
		echo "gzipd requires a folder/file to compress"
		return 1
	fi

	gzipd_output="$(basename $1).tgz"
	tar -czvf "$gzipd_output" "$1"
}
