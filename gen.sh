#!/bin/bash
set -e
set -x

mkdir screenshots || true

convert -size 360x360 xc:white -font "FreeMono" -pointsize 12 -fill black -stroke black -draw @ascii.txt screenshots/image.png
