#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
cd $basedir
rm -rf $basedir/package/feeds/packages/libevent
patch -p1 < $patchdir/remove-libevent-legacy.patch