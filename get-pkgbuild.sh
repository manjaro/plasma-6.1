#!/bin/bash

_url=https://gitlab.archlinux.org/archlinux/packaging/packages
_file=../plasma.list

mkdir -p plasma
cd plasma

for f in $(cat ${_file}); do
    [[ ! -d $f ]] && [[ ! -d ${f%-git} ]] && \
      git clone --depth 1 ${_url}/${f}.git || echo "$f already exists; skipping."
done
