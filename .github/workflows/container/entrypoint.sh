#!/usr/bin/env bash

if [ -d "/github" ];then
    sudo chown -R build /github/workspace /github/home
fi

export MAKEFLAGS=-j$(nproc)

cd ${PACK_NAME}
namcap PKGBUILD
updpkgsums
makepkg -fC --syncdeps --noconfirm

if [ -f "${PACK_NAME}*.pkg.tar.zst" ];then
    echo "==========================="
    echo "Package Created:"
    ls -lsa *.pkg.tar.zst
    echo "==========================="
fi

_cmd="$1"
_pkg_name="$2"


case $1 in;
  build) __build_packs "$2"
  
