include_recipe "nginx::default"

template "/etc/nginx/sites-available/couchpotato" do
   source "nginx-couchpotato.erb"
   owner "root"
   mode "0644"
   notifies :restart, 'service[nginx]'
end

execute "enable couchpotato" do
   command "nxensite couchpotato"
   creates "/etc/nginx/sites-enabled/couchpotato"
end

template "/etc/nginx/sites-available/headphones" do
   source "nginx-headphones.erb"
   owner "root"
   mode "0644"
   notifies :restart, 'service[nginx]'
end

execute "enable headphones" do
   command "nxensite headphones"
   creates "/etc/nginx/sites-enabled/headphones"
end

template "/etc/nginx/sites-available/sabnzbd" do
   source "nginx-sabnzbd.erb"
   owner "root"
   mode "0644"
   notifies :restart, 'service[nginx]'
end

execute "enable sabnzbd" do
   command "nxensite sabnzbd"
   creates "/etc/nginx/sites-enabled/sabnzbd"
end

template "/etc/nginx/sites-available/sickbeard" do
   source "nginx-sickbeard.erb"
   owner "root"
   mode "0644"
   notifies :restart, 'service[nginx]'
end

execute "enable sickbeard" do
   command "nxensite sickbeard"
   creates "/etc/nginx/sites-enabled/sickbeard"
end
