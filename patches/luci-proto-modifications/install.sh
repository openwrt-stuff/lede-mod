#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
cd $basedir
patch -p1 < $patchdir/luci-proto-openconnect-modify.patch
patch -p1 < $patchdir/openconnect-disable-gssapi.patch