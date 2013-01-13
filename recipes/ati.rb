%w{
  debhelper
  dh-modaliases
  libqtgui4
  execstack
  libva1
  libva-dev
  xvba-va-driver
  xinit
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

bash "install_ati_driver" do
  user "root"
  cwd "/opt/"
  code <<-EOH
  wget -q http://www2.ati.com/drivers/linux/amd-driver-installer-catalyst-12.10-x86.x86_64.zip
  unzip -o amd-driver-installer-catalyst-12.10-x86.x86_64.zip
  sh amd-driver-installer-catalyst-12.10-x86.x86_64.run --buildpkg Ubuntu/quantal
  dpkg -i fglrx*.deb
  aticonfig --initial
  EOH
   not_if do
            ::File.exists?("/usr/bin/aticonfig") &&
            node['ati']['force_download'] == false
    end
end

template "/etc/X11/Xwrapper.config" do
   source "Xwrapper.config.erb"
   owner "root"
   mode "0644"
end
