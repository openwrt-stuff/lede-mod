#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)


cd $basedir

patch --no-backup-if-mismatch -p1 < $patchdir/luci-proto-openconnect-modify.patch
#patch -p1 < $patchdir/openconnect-disable-gssapi.patch

