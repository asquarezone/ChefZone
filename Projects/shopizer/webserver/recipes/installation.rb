#
# Cookbook Name:: webserver
# Recipe:: installation
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
apt_update 'update_daily' do
  action :periodic
  frequency 3600
end

log 'apt_update frequency set to 1 hour'


tomcat_packageName = node['installation']['applicationserver']
# installation of tomcat
package tomcat_packageName do
  action :install
end

log 'installed tomcat'

# starting tomcat service
service tomcat_packageName do
  action [:enable, :start]
end

log 'enabled and started tomcat'

#configure users.xml

template node['applicationserver']['usersfile'] do
  source 'tomcat-users.erb'
  owner 'root'
  mode '0755'
  action :create
end

log "set tomcat-users data in #{node['applicationserver']['usersfile']}"


#install additional features
package node['installation']['additionalpackages'] do
  action :install
  notifies :restart, "service[#{tomcat_packageName}]"
end

log 'installed additionalpackages'

cookbook_file node['applicationserver']['warlocation'] do
  source 'sm-shop.war'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  notifies :restart, "service[#{tomcat_packageName}]"
end

log 'copied war file and restarted tomcat'




