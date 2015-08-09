#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cp $patchdir/001-new_sync_read_and_write.patch $basedir/target/linux/generic/patches-4.4
