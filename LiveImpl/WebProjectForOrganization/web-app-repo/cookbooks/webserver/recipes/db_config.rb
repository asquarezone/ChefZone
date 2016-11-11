#
# Cookbook Name:: .
# Recipe:: db_config
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Configure the MySQL client.
mysql_client 'default' do
  action :create
end

# Configure the MySQL service.
mysql_service 'default' do
  initial_root_password node['webserver']['db_config']['root_password']
  action [:create, :start]
end