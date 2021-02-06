#!/usr/bin/env bash

if [ -z "$*" ]; then echo "Usage: ./sort.sh .."; fi

source ./mover.sh
source ./config_reader.sh

read_config video
read_config website
read_config gif
read_config pic

cd "$1"

mkdir -p video
mkdir -p website
mkdir -p gif
mkdir -p pic

move_extensions video "${video_extensions[@]}"
move_extensions website "${website_extensions[@]}"
move_extensions gif "${gif_extensions[@]}"
move_extensions pic "${pic_extensions[@]}"

