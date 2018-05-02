#
# Cookbook:: .
# Recipe:: nodejs
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#change permissions for .nvm
current_user = node['appserver']['user']

directory nvm_directory do
    owner current_user
    group current_user
    mode '0755'
    action :create
  end


# install node js

nodejsPath = node['appserver']['nodejs']['path']
version = node['appserver']['nodejs']['version']

script 'install node js' do
  cwd node['appserver']['home']
  code "nvm install #{version}"
  notifies :create, "directory[#{nodejsPath}]",  :immediately
  not_if { ::File.exist?("#{nodejsPath}/#{version}") }
end

directory nodejsPath do
  owner current_user
  group current_user
  mode '0755'
  action :nothing
  notifies :create, "file[#{nodejsPath}/#{version}]",  :immediately
end

file "#{nodejsPath}/#{version}" do
  content 'content'
  owner current_user
  group  current_user
  mode '0755'
  action :nothing
end
