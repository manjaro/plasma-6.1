#!/bin/bash

for m in $(cat plasma.list); do
    echo "clone $m"
    git clone https://gitlab.archlinux.org/archlinux/packaging/packages/$m.git
done
