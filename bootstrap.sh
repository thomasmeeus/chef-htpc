#!/bin/bash

mkdir -p ~/chef/cookbooks
cd ~/chef/cookbooks

if [[ -d apt ]]; then
  cd apt && git pull && cd ..
else
  git clone git://github.com/opscode-cookbooks/apt.git
fi

if [[ -d git ]]; then
  cd git && git pull && cd ..
else
  git clone git://github.com/opscode-cookbooks/git.git
fi

if [[ -d libcec ]]; then
  cd libcec && git pull && cd ..
else
  git clone git://github.com/thomasmeeus/libcec.git
fi