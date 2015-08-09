#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
cp $patchdir/001-minidlna-realmedia.patch $basedir/feeds/packages/multimedia/minidlna/patches/
cp $patchdir/002-read-ass-subtitles.patch $basedir/feeds/packages/multimedia/minidlna/patches/
cd $basedir
patch -p1 < $patchdir/minidlna.patch