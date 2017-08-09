#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

cd $basedir/feeds/packages/multimedia/gst1-plugins-bad/
patch -p1 < $patchdir/gstreamer_enable_faad.patch
