#!/bin/bash
set -e
set -x

cd `dirname $0`

mkdir screenshots || true
MAGICK=""

if [ "$CIRCLE_PULL_REQUEST" != "" && "$CI_MERGE_REQUEST_IID" != ""] ; then
    # temporary test to verify situations where master takes time to propagate.
    sleep 45
fi

if magick --help ; then
    MAGICK=magick
fi

$MAGICK convert -size 360x360 xc:white -font "FreeMono" -pointsize 12 -fill black -stroke black -draw @ascii.txt -strip screenshots/image.png
