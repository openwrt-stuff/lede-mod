#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
exit 0
ls $patchdir | grep -P "^\d\.\d+$" | while read KVER
do
    cp $patchdir/${KVER}/* \
        $basedir/target/linux/generic/patches-${KVER}/
done

