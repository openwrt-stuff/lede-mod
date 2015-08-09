#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cp $patchdir/001-minidlna-realmedia.patch $basedir/feeds/packages/multimedia/minidlna/patches/
#cp $patchdir/002-read-ass-subtitles.patch $basedir/feeds/packages/multimedia/minidlna/patches/
cp $patchdir/003_rescan_v2.patch $basedir/feeds/packages/multimedia/minidlna/patches/
cp $patchdir/003_minidlna-PNG+user_icons.patch $basedir/feeds/packages/multimedia/minidlna/patches/
cp $patchdir/004_fulltextsearch.patch $basedir/feeds/packages/multimedia/minidlna/patches/
cp $patchdir/007_time-based-seek.patch $basedir/feeds/packages/multimedia/minidlna/patches/
cp $patchdir/008_multisubs.patch $basedir/feeds/packages/multimedia/minidlna/patches/

cp $patchdir/dlna.png $basedir/feeds/packages/multimedia/minidlna/files/dlna.png
 
cd $basedir

rm -f $basedir/package/libs/libiconv-full/patches/100-strip_charsets.patch

patch --no-backup-if-mismatch -p1 < $patchdir/minidlna_luci.patch
patch --no-backup-if-mismatch -p1 < $patchdir/minidlna_makefile_fix.patch
 
