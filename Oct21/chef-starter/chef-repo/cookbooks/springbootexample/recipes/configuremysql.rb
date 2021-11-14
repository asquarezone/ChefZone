#
# Cookbook:: .
# Recipe:: configuremysql
#
# Copyright:: 2021, The Authors, All Rights Reserved.

mysql_service 'qt' do
  port '3306'
  version '8.0'
  initial_root_password 'rootroot'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end

mysql_database 'qtecommerce' do
  host '127.0.0.1'
  user 'root'
  password 'rootroot'
  action :create
end

