#!/bin/sh
exit 0
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
cp $patchdir/wireless $basedir/package/base-files/files/etc/config/
