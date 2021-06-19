#
# Cookbook:: .
# Recipe:: mysql
#
# Copyright:: 2021, The Authors, All Rights Reserved.

apt_update 'update' do
    ignore_failure true
    action :update
    only_if { node['platform'] == 'ubuntu' }
end


mysql_service 'nop' do
    port '3306'
    version '5.7'
    initial_root_password 'india123'
    action [:create, :start]
end

mysql_client 'nop' do
    action :create
end