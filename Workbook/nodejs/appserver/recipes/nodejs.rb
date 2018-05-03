#
# Cookbook:: .
# Recipe:: nodejs
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#change permissions for .nvm
current_user = node['appserver']['user']
nvm_directory = node['appserver']['nvm']['home']


directory nvm_directory do
  mode '0755'
  user current_user
  action :create
  notifies :write, "log[#{nvm_directory}]", :immediately
end

log nvm_directory do
  level :info
  message "Changed permissions for #{nvm_directory}"
  action :nothing
end


# install node js

nodejsPath = node['appserver']['nodejs']['path']
version = node['appserver']['nodejs']['version']

nvm_installation_file = "#{node['appserver']['home']}/nodejs.sh"

template nvm_installation_file do
  source 'nodejs.sh.erb'
  owner current_user
  mode '0755'
  action :create
end


execute 'install node js' do
  command "sudo sh #{nvm_installation_file}"
  user current_user
  notifies :create, "directory[#{nodejsPath}]",  :immediately
  not_if { ::File.exist?("#{nodejsPath}/#{version}") }
end

directory nodejsPath do
  mode '0755'
  action :nothing
  notifies :create, "file[#{nodejsPath}/#{version}]",  :immediately
end

file "#{nodejsPath}/#{version}" do
  content 'content'
  mode '0755'
  action :nothing
end
