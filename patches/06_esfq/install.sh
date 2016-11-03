#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

cd $basedir
patch -p1 < $patchdir/integrate_esfq.patch

cp $patchdir/ip_651_esfq.patch $basedir/package/network/utils/iproute2/patches/651_esfq.patch
cp $patchdir/linux_651-esfq.patch $basedir/target/linux/generic/patches-3.18/651-esfq.patch
cp $patchdir/linux_651-esfq.patch $basedir/target/linux/generic/patches-4.4/651-esfq.patch

