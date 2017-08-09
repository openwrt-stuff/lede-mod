#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

ls $patchdir | grep -P "^\d\.\d+$" | while read KVER
do
    cp $patchdir/${KVER}/* \
        $basedir/target/linux/generic/patches-${KVER}/
done

#mkdir -p $basedir/package/qca
cp $patchdir/local-development.mk $basedir/include/
