#
# Cookbook:: .
# Recipe:: webserver
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'nginx::default'

template '/etc/nginx/sites-available/default' do
  source 'default.erb'
  owner 'root'
  group '3'
  mode '0755'
  action :create
  notifies :restart, 'service[nginx]'
end

service 'nginx' do
  action :enable
end


