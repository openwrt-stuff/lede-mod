#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
cd $basedir
patch -p1 < $patchdir/integrate_imq.patch
patch -p1 < $patchdir/linux-config-3.18.patch
patch -p1 < $patchdir/linux-config-4.1.patch
cp $patchdir/300-imq.patch $basedir/package/network/utils/iptables/patches/
cp $patchdir/3.18/690-imq.patch $basedir/target/linux/generic/patches-3.18/
cp $patchdir/4.1/690-imq.patch $basedir/target/linux/generic/patches-4.1/