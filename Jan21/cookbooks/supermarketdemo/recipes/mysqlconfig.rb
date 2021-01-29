#
# Cookbook:: .
# Recipe:: mysqlconfig
#
# Copyright:: 2021, The Authors, All Rights Reserved.

mysql_service 'fromchef' do
    port '3306'
    version '5.7'
    initial_root_password 'mypassword'
    action [:create, :start]
end

service 'mysql-fromchef' do
    action :enable
end
