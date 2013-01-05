HTPC
====

Installs and configures my perfect HTPC on Ubuntu 12.10 minimal

What does it do?
================

* Install LibCEC
* Install XBMC
* Install and configure Sabnzbd
* Install and configure Couchpotato
* Install and configure Sickbeard
* Install and configure Nginx to reverse proxy

How To
======

Install Chef-solo on Ubuntu 12.10 Minimal
------------------------------------------

    echo "deb http://apt.opscode.com/ `lsb_release -cs`-0.10 main" | sudo tee /etc/apt/sources.list.d/opscode.list
    mkdir -p /etc/apt/trusted.gpg.d
    gpg --keyserver keys.gnupg.net --recv-keys 83EF826A
    gpg --export packages@opscode.com | sudo tee /etc/apt/trusted.gpg.d/opscode-keyring.gpg > /dev/null
    apt-get -y update
    apt-get -y install opscode-keyring
    apt-get -y upgrade
    apt-get -y install chef

Configure Chef-Solo
-------------------

Edit /etc/chef/solo.rb like this:

    file_cache_path "/tmp/chef"
    cookbook_path "/root/chef/cookbooks"
    data_bag_path "/root/chef/data_bags"
    role_path nil
    log_level :info

Edit ```/root/chef/node.json``` like this:

    {
        "run_list": [ "recipe[htpc::default]" ]
    }

Clone this repo in ```/root/chef/cookbooks```

Personal settings
--------------

Edit ```attributes/default.rb.example``` with your personal settings, check the used cookbooks for all available attributes since I don't use them all. Save the file as ```default.rb```.

Bootstrap
---------

Run ```./bootstrap``` as root, this will git clone all needed dependencies. When done, run ```chef-solo -j node.json``` to let Chef do it's work.





