#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
cd $basedir
patch -p1 < $patchdir/disable_p2pblock_by_default.patch