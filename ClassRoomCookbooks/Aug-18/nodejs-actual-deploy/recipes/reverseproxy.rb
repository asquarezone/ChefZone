#
# Cookbook:: .
# Recipe:: reverseproxy
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'nginx::default'

template '/etc/nginx/sites-available/default' do
  source 'default.erb'
  action :create
end


service 'nginx' do
  action :restart
end
