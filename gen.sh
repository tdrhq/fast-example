#!/bin/bash
set -e
set -x

cd `dirname $0`

mkdir screenshots || true
MAGICK=""
env

if [ x"$CIRCLE_PULL_REQUEST" = x ] && [ x"$CI_MERGE_REQUEST_IID" = x ] ; then
    # just testing failure modes
    true
    exit 1
fi

if magick --help ; then
    MAGICK=magick
fi

$MAGICK convert -size 360x360 xc:white -font "FreeMono" -pointsize 12 -fill black -stroke black -draw @ascii.txt -strip screenshots/image.png
