#
# Cookbook Name:: webserver
# Recipe:: installation
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# references 1.  https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-7-on-centos-7-via-yum
# https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-7-on-ubuntu-14-04-via-apt-get
if node['platform_family'] == 'rhel'
  execute 'update yum' do
    command 'yum -y update'
    action :run
  end
  log 'updated yum'
else
  apt_update 'update_daily' do
    action [:periodic, :update]
    frequency 3600
  end
  log 'update frequency set to 1 hour'
end



tomcat_packageName = node['installation']['applicationserver']
log "identified package is #{tomcat_packageName}"

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

# configure users.xml

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
