#
# Cookbook:: .
# Recipe:: apache
#
# Copyright:: 2019, The Authors, All Rights Reserved.

default['my_lamp']['package'] = 'something'

apt_update 'update' do
    ignore_failure true
    action :update
    only_if node['platform'] == 'ubuntu'
end

package_name = node['my_lamp']['apache_package_name']

package package_name do
    action :install
end

service package_name do
    action :restart
end


