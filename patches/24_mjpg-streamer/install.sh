#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cp $patchdir/060-fix-sigtrap-in-v4l2uvc.patch $basedir/package/feeds/packages/mjpg-streamer/patches/
