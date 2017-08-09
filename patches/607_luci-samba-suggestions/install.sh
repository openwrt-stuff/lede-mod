#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cd $basedir

patch -p1 --no-backup-if-mismatch < $patchdir/luci-samba-suggestion.patch
