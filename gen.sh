#!/bin/bash
set -e
set -x

mkdir screenshots || true
MAGICK=""

if magick --help ; then
    MAGICK=magick
fi

$MAGICK convert -size 360x360 xc:white -font "FreeMono" -pointsize 12 -fill black -stroke black -draw @ascii.txt -strip screenshots/image.png
