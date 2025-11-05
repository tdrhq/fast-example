#!/bin/bash
set -e
set -x

cd `dirname $0`

mkdir screenshots || true
MAGICK=""
env

if [ `git rev-parse --abbrev-ref HEAD` = master ] ; then
    sleep 0

fi

if magick --help ; then
    MAGICK=magick
fi

echo Before convert call

$MAGICK convert --version


FONT="FreeSans"

$MAGICK convert -size 375x812 xc:"#F2F2F7" \
        -antialias \
  -font "$FONT" -pointsize 24 -fill "#007AFF" -gravity North -annotate +0+120 "Welcome Back" \
  -font "$FONT" -pointsize 16 -fill "#1C1C1E" -gravity North -annotate +0+180 "Sign in to your account" \
  -fill "#FFFFFF" -stroke "#E5E5EA" -strokewidth 1 -draw "roundrectangle 40,260 335,310 8,8" \
  -font "$FONT" -pointsize 16 -fill "#8E8E93" -gravity NorthWest -annotate +55+280 "Email" \
  -fill "#FFFFFF" -stroke "#E5E5EA" -strokewidth 1 -draw "roundrectangle 40,330 335,380 8,8" \
  -font "$FONT" -pointsize 16 -fill "#8E8E93" -gravity NorthWest -annotate +55+350 "Password" \
  -font "$FONT" -pointsize 14 -fill "#007AFF" -gravity NorthWest -annotate +55+400 "Forgot Password?" \
  -fill "#007AFF" -stroke none -draw "roundrectangle 40,440 335,490 8,8" \
  -font "$FONT" -pointsize 18 -fill "#FFFFFF" -gravity NorthWest -annotate +147+455 "Sign In" \
  -fill "#111111" -draw @ascii.txt \
  -strip screenshots/image.png \




echo After convert call
