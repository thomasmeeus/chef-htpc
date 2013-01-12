#!/bin/bash

mkdir -p /root/chef/cookbooks
cd /root/chef/cookbooks

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

if [[ -d nginx ]]; then
  cd nginx && git pull && cd ..
else
  git clone git://github.com/opscode-cookbooks/nginx.git
fi

if [[ -d ohai ]]; then
  cd ohai && git pull && cd ..
else
  git clone git://github.com/opscode-cookbooks/ohai.git
fi

if [[ -d libcec ]]; then
  cd libcec && git pull && cd ..
else
  git clone git://github.com/thomasmeeus/libcec.git
fi

if [[ -d xbmc ]]; then
  cd xbmc && git pull && cd ..
else
  git clone git://github.com/thomasmeeus/xbmc.git
fi

if [[ -d sabnzbd ]]; then
  cd sabnzbd && git pull && cd ..
else
  git clone git://github.com/thomasmeeus/sabnzbd.git
fi

if [[ -d couchpotato ]]; then
  cd couchpotato && git pull && cd ..
else
  git clone git://github.com/thomasmeeus/couchpotato.git
fi

if [[ -d sickbeard ]]; then
  cd sickbeard && git pull && cd ..
else
  git clone git://github.com/thomasmeeus/sickbeard.git
fi

if [[ -d autosub ]]; then
  cd autosub && git pull && cd ..
else
  git clone git://github.com/thomasmeeus/autosub.git
fi
