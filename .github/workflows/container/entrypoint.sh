#!/usr/bin/env bash

if [ -d "/github" ];then
    sudo chown -R build /github/workspace /github/home
fi

__build_packs() {
  export MAKEFLAGS=-j$(nproc)
  cd workspace
  namcap PKGBUILD
  updpkgsums
  makepkg -fC --syncdeps --noconfirm
  if [ -f "${PACK_NAME}*.pkg.tar.zst" ];then
      echo "==========================="
      echo "Package Created:"
      ls -lsa *.pkg.tar.zst
      echo "==========================="
  fi
}

__list_update() {
  echo ${GPG_SIGN_KEY} | base64 -d | gpg --import
  cd workspace
  

}


_cmd="$1"

case $1 in;
  build) __build_packs;;
  repolist) __list_update;;  
esac  
