#!/bin/bash

source ./mover.sh
source ./config_reader.sh

mkdir -p video
mkdir -p website
mkdir -p gif
mkdir -p pic

read_config video
read_config website
read_config gif
read_config pic

cd "$1"
move_extensions video "${video_extensions[@]}"
move_extensions website "${website_extensions[@]}"
move_extensions gif "${gif_extensions[@]}"
move_extensions pic "${pic_extensions[@]}"

