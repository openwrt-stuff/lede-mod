#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

cd $basedir/package/feeds/packages/libtorrent
patch -p1 < $patchdir/enable_ipv6_falloc.patch
cp $patchdir/libtorrent_peerid_utorrent.patch $basedir/package/feeds/packages/libtorrent/patches/
cp $patchdir/rtorrent_ua_utorrent.patch $basedir/package/feeds/packages/rtorrent/patches/
cp $patchdir/rtorrent-ipv6.patch $basedir/package/feeds/packages/rtorrent/patches/
