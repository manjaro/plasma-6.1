#!/bin/bash

for pkg in $(ls */PKGBUILD | sed s'|/PKGBUILD||g') ; do
   echo "Edit ${pkg}"
   pushd ${pkg} &>/dev/null
   _rel=$(cat PKGBUILD | grep pkgver= | cut -d= -f2 | head -n1)
   sed -i -e "s/pkgver=${_rel}/pkgver=6.1.5/" PKGBUILD
   popd &>/dev/null
done
