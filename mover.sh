#!/bin/bash

function move_extension {
	mv *."$2" "$1" 2>/dev/null
}

function move_extensions {
	extensions=("$@")
	for i in "${extensions[@]}"; do
		move_extension "$1" "$i"
	done
}

