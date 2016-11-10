#
# Cookbook Name:: .
# Recipe:: database
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#Copy the secrets file
#file node['webapp-linux']['password']['secret-path'] do
#  owner 'root'
#  group 'root'
#  mode 0755
#  content File.read("c:/encrypted_data_bag_secret")
#  action :create
#end
# Write seed_file to file system
cookbook_file  node['webapp-linux']['password']['secret-path'] do
  source 'encrypted_data_bag_secret'
  owner 'root'
  group 'root'
  mode '0600'
  action :create
end

#Configure the mysql_chef_gem
mysql2_chef_gem 'default' do
  action :install
end

# install the mysql client
mysql_client 'default' do
  action :create
end

password_secret=Chef::EncryptedDataBagItem.load_secret(node['webapp-linux']['password']['secret-path'])
root_password_databag_item=Chef::EncryptedDataBagItem.load('credentials','mysql_root_password',password_secret)

mysql_service 'default' do
  initial_root_password root_password_databag_item['password']
  action [:create,:start]
end

#Create database
mysql_database node['webapp-linux']['database']['dbname'] do
  connection(
    :host => node['webapp-linux']['database']['host'],
    :username => node['webapp-linux']['database']['username'],
    :password => root_password_databag_item['password']
  )
  action :create
end

#Load user password
user_password_databag_item=Chef::EncryptedDataBagItem.load('credentials','db_admin_password',password_secret)

# Create database user
mysql_database_user node['webapp-linux']['database']['username'] do
  connection(
    :host => node['webapp-linux']['database']['host'],
    :username => node['webapp-linux']['database']['username'],
    :password => root_password_databag_item['password']
  )
  password root_password_databag_item['password']
  database_name  node['webapp-linux']['database']['dbname']
  host node['webapp-linux']['database']['host']
  action [:create,:grant]
end


# Write seed_file to file system
cookbook_file node['webapp-linux']['database']['seed_file'] do
  source 'create-tables.sql'
  owner 'root'
  group 'root'
  mode '0600'
  action :create
end

# Seed My SQl and test data
execute 'initialize database' do
  command "mysql -h #{node['webapp-linux']['database']['host']} -u #{node['webapp-linux']['database']['username']} -p #{user_password_databag_item['password']} -D #{node['webapp-linux']['database']['dbname']} < #{node['webapp-linux']['database']['seed_file']}"
  not_if "mysql -h #{node['webapp-linux']['database']['host']} -u #{node['webapp-linux']['database']['username']} -p #{user_password_databag_item['password']} -D #{node['webapp-linux']['database']['dbname']} -e 'describe_customers;'"
end
