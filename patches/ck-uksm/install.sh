#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
KVER=3.18
KVER2=4.1
cp $patchdir/${KVER}/* \
  $basedir/target/linux/generic/patches-${KVER}/

cp $patchdir/${KVER2}/* \
  $basedir/target/linux/generic/patches-${KVER2}/

cd $basedir
patch -p1 < ${patchdir}/enable-bfs-bfq-${KVER}.patch
patch -p1 < ${patchdir}/enable-bfs-bfq-${KVER2}.patch