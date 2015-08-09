#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cp $patchdir/431-syncppp-246.patch $basedir/package/network/services/ppp/patches/
cd $basedir
patch -p1 < $patchdir/ppp.patch
( patch -p1 < $patchdir/ppp-netifd-syncpppd.patch ) && rm -f package/network/services/ppp/files/ppp.sh.orig

