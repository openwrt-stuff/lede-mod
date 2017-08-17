#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cd $basedir
patch -p1 --no-backup-if-mismatch < $patchdir/wndr4700-make-mtd9-writable.patch
patch -p1 --no-backup-if-mismatch < $patchdir/luci-fstab-add-excludes.patch
patch -p1 --no-backup-if-mismatch < $patchdir/opkg-add-force-space-option.patch
install -Dm 755 $patchdir/mtd9mount $basedir/target/linux/apm821xx/base-files/etc/init.d/mtd9mount
