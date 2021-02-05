#!/bin/bash

source ./mover.sh

video_extensions=("mp4" "webm" "mov" "amv" "avi")

cd ..
move_extensions video "${video_extensions[@]}"

