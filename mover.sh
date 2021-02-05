#!/usr/bin/env bash

function move_extension {
	mv *."$2" "$1" 2>/dev/null
	#mv *."$2" "$1"
}

function move_extensions {
	local extensions=("$@")
	extensions=("${extensions[@]:1}")
	for i in "${extensions[@]}"; do
		move_extension "$1" "$i"
	done
}

