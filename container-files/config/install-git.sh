#!/bin/bash

echo "=============================================================="
echo "Installing Git ${GIT_VERSION}...                              "
echo "=============================================================="

cd /tmp
wget https://www.kernel.org/pub/software/scm/git/git-$GIT_VERSION.tar.gz

tar -zxf git-$GIT_VERSION.tar.gz 
cd git-$GIT_VERSION
make -j$(getconf _NPROCESSORS_ONLN) prefix=/usr/local all
make -j$(getconf _NPROCESSORS_ONLN) prefix=/usr/local install

rm -rf /tmp/git* && cd /tmp

echo && echo "Git installed." && echo
