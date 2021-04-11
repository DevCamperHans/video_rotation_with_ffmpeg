#!/bin/bash

echo "Starting rotating videos"

for arg in "$@"; do
  echo "Rotating now ${arg}"
  extension="${arg##*.}"
  filename="${arg%.*}"
  ffmpeg.exe -i ${arg} -vf "vflip,hflip" "${filename}_rotated.${extension}"
done
