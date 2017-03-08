#
# Cookbook Name:: .
# Recipe:: mysql_install
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

#updating packages
if node['platform_family'] == 'rhel'
  execute 'update yum' do
    command 'yum -y update'
    action :run
  end
  log 'updated yum'
else
  apt_update 'update_daily' do
    action :update
  end
  log 'updated apt'
end

mysql_client 'default' do
  action :create
end

log 'installed mysql client'

#dbgitem = data_bag_item('admin','my_sql_root_password',IO.read("/etc/chef/encrypted_data_bag_secret"))

# Configure the MySQL service.
mysql_service 'default' do
  bind_address '0.0.0.0'
  port '3306'
  initial_root_password 'root'
  action [:create, :start]
end

log 'installed mysql server'
