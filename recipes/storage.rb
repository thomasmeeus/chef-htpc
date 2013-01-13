bash "add_to_fstab" do
  user "root"
  code <<-EOH
  echo "UUID=ab3798a9-19fc-4d07-a4da-7e58fc8fdcdb       /media/media        ext4        defaults,noatime,nodiratime       0       0" >> /etc/fstab
  EOH
  not_if  'cat /etc/fstab |grep media/media'
end

template "/etc/hdparm.conf" do
   source "hdparm.conf.erb"
   owner "root"
   mode "0644"
end
