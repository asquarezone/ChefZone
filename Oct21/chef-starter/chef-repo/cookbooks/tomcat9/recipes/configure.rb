#
# Cookbook:: tomcat9
# Recipe:: configure
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# sudo useradd -m -U -d /opt/tomcat -s /bin/false tomcat
user_home = node['tomcat9']['userhome']

user node['tomcat9']['username'] do
  comment 'comment'
  home user_home
  shell node['tomcat9']['usershell']
  action :create
end

download_url = node['tomcat9']['download_url']
local_download_path = node['tomcat9']['local_download_path']

remote_file local_download_path do
  source download_url
  action :create
end

archive_file 'tomcat' do
  path local_download_path
  destination user_home
  action :extract
  notifies :run, 'execute[createlink]', :immediately
end

# create a symbolic link

execute 'createlink' do
  command "sudo ln -s #{node['tomcat9']['extracted_tomcat']} #{node['tomcat9']['tomcatdir']}"
  action :nothing
  notifies :run, 'execute[folderpermissions]', :immediately
end

user_name = node['tomcat9']['username']

# change ownership of /opt/tomcat
execute 'folderpermissions' do
  command "sudo chown -R #{user_name}: #{user_home}"
  action :nothing
  notifies :run, 'execute[changepermissions]', :immediately
end

execute 'changepermissions' do
  command "sudo chmod +x #{node['tomcat9']['tomcatdir']}/bin/*.sh"
  action :nothing
end

