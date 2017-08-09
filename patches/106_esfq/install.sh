#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

cd $basedir
patch -p1 < $patchdir/integrate_esfq.patch

cp $patchdir/ip_651_esfq.patch $basedir/package/network/utils/iproute2/patches/651_esfq.patch

ls $basedir/target/linux/generic/ | grep -oP "(?<=config-)\d\.\d+$" | while read KVER
do
    if [ "$KVER" == "3.18" ] || [ "$KVER" == "4.4" ]; then
      cp $patchdir/linux_651-esfq.patch $basedir/target/linux/generic/patches-${KVER}/651-esfq.patch
    fi
done