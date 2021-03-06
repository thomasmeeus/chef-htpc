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

if [[ -d database ]]; then
  cd database && git pull && cd ..
else
  git clone git://github.com/opscode-cookbooks/database.git
fi

if [[ -d openssh ]]; then
  cd openssh && git pull && cd ..
else
  git clone git://github.com/opscode-cookbooks/openssh.git
fi

if [[ -d build-essential ]]; then
  cd build-essential && git pull && cd ..
else
  git clone git://github.com/opscode-cookbooks/build-essential.git
fi

if [[ -d mysql ]]; then
  cd mysql && git pull && cd ..
else
  git clone git://github.com/opscode-cookbooks/mysql.git
fi

if [[ -d openssl ]]; then
  cd openssl && git pull && cd ..
else
  git clone git://github.com/opscode-cookbooks/openssl.git
fi

if [[ -d user ]]; then
  cd user && git pull && cd ..
else
  git clone git://github.com/fnichol/chef-user.git user
fi

if [[ -d sudo ]]; then
  cd sudo && git pull && cd ..
else
  git clone git://github.com/opscode-cookbooks/sudo.git
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
