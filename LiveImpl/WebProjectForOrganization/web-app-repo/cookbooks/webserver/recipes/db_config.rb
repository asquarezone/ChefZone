#
# Cookbook Name:: .
# Recipe:: db_config
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Configure the MySQL client.
mysql_client 'default' do
  action :create
end

dbgitem = data_bag_item('admin','my_sql_root_password',IO.read("/etc/chef/encrypted_data_bag_secret"))

# Configure the MySQL service.
mysql_service 'default' do
  initial_root_password dbgitem['password']
  action [:create, :start] 
end