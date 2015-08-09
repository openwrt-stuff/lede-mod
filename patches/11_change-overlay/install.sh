#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cd $basedir
patch -p1 < $patchdir/change-wndr4300-overlay-size.patch
