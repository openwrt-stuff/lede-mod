#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cp $patchdir/012_bypass_getaddrinfo_check.patch $basedir/package/feeds/packages/python/patches/
