#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm -f ${basedir}/package/base-files/files/etc/functions.sh
ln -s ../lib/functions.sh ${basedir}/package/base-files/files/etc/functions.sh
mkdir -p ${basedir}/package/base-files/files/usr/bin/
ln -s ../sbin/ip ${basedir}/package/base-files/files/usr/bin/ip
