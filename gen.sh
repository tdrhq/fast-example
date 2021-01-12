#!/bin/bash
set -e
set -x




mkdir screenshots || true
# yrm screenshots/image.png
convert -size 360x360 canvas:none -font "FreeMono" -pointsize 12 -fill xc:yellow -stroke xc:red -draw @ascii.txt screenshots/image.png
exiftool -all= screenshots/image.png
