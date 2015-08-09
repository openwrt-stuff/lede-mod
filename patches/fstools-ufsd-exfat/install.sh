#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
mkdir $basedir/package/system/fstools/patches/
cp $patchdir/001-libblkid-add-exfat-ntfs-support.patch $basedir/package/system/fstools/patches/
cp $patchdir/002-block-add-exfat-ntfs-support.patch $basedir/package/system/fstools/patches/
cp $patchdir/003-block-use-ufsd-first.patch $basedir/package/system/fstools/patches/
cp $patchdir/004-dont-config-partitions-when-detect.patch $basedir/package/system/fstools/patches/
cp $patchdir/automount.hotplug $basedir/package/system/fstools/files/
cd $basedir
patch -p1 < $patchdir/fstools.patch