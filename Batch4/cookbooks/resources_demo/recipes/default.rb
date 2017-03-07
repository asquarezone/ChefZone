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

homepage_path = node['webserver']['homepage']['path']

cookbook_file homepage_path do
  source 'index.html'
  owner 'root'
  group 'apache'
  mode '0755'
  notifies :restart, "service[#{webserver_package}]"
  action :create
  only_if { Homepage.exists? }
end

motd 'messageoftheday' do
  action :create
end
