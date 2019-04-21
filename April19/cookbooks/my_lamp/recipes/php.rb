#
# Cookbook:: .
# Recipe:: php
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package node['my_lamp']['php_packages'] do
    action :install
end


service 'restart webserver' do
    service_name node['my_lamp']['apache_package_name']
    action :restart
end

