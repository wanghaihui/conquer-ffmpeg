#!/bin/bash

. settings.sh

BASEDIR=$(pwd)
TOOLCHAIN_PREFIX=${BASEDIR}/toolchain-android

for i in "${SUPPORTED_ARCHITECTURES[@]}"
do
  rm -rf ${TOOLCHAIN_PREFIX}
  #$1 = architecture
  #$2 = base directory
  #$3 = pass 1 if you want to export default compiler environment variables
  #armeabi-v7a
  #/Users/meijian/Desktop/ffmpeg-android-osx-master
  #1
  ./libpng_build.sh $i $BASEDIR 1 || exit 1
  ./freetype_build.sh $i $BASEDIR 1 || exit 1
  ./expat_build.sh $i $BASEDIR 1 || exit 1
  ./fribidi_build.sh $i $BASEDIR 1 || exit 1
  ./fontconfig_build.sh $i $BASEDIR 1 || exit 1
  ./libass_build.sh $i $BASEDIR 1 || exit 1
  ./ffmpeg_build.sh $i $BASEDIR 0 || exit 1
done

rm -rf ${TOOLCHAIN_PREFIX}
