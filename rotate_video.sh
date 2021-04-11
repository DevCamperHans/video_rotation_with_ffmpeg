#!/bin/bash

echo "Starting rotatin videos"

for arg in "$@"; do
  printf 'Rotation now "%s"\n' "$arg"
  extension="${arg##*.}"
  filename="${arg%.*}"
  ffmpeg.exe -i ${arg} -vf "vflip,hflip" "${filename}_rotated.${extension}"
done
