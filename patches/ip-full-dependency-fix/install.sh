#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
cd $basedir
patch -p1 < $patchdir/ip-full-dependency-fix.patch
rm -rf package/feeds/packages/mwan3
rm -rf package/feeds/packages/mwan3-luci