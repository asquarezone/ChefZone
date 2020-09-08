#
# Cookbook:: .
# Recipe:: mysql
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# service name will be mysql_default

mysql_service 'default' do
    version '5.7'
    bind_address '0.0.0.0'
    port '3306'
    initial_root_password 'admin123'
    action [:create, :start]
end

mysql_client 'default' do
    action :create
end