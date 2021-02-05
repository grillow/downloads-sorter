#!/bin/bash

function read_config {
	readarray -t "$1"_extensions < ./config/"$1"
}

