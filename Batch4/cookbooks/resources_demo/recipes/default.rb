#
# Cookbook Name:: resources_demo
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

webserver_package = node['webserver']['package']

package webserver_package

service webserver_package do
  action [:enable, :start]
end

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  owner 'root'
  group 'apache'
  mode '0755'
  action :create
  notifies :restart, "service[#{webserver_package}]"
end

file '/etc/motd' do
  content 'Welcome to Web server managed by chef'
  action :create
  only_if { ::File.exist?('/etc/motd') }
end




