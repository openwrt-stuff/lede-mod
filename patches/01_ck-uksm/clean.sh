#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cd $basedir/target/linux/generic/
rm -f config-*
git checkout config-*

