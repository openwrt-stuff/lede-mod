#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cp $patchdir/004_node_ppc.patch $basedir/package/feeds/packages/node/patches/
