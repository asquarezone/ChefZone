#
# Cookbook:: .
# Recipe:: lamp
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package_name = node['qtlampserver']['packagename']
php_packages = node['qtlampserver']['phppackages']

if node['platform'] == 'ubuntu'
    apt_update 'update ubuntu packages' do
        ignore_failure true
        action :update
    end
end    
    
if node['platform'] != 'ubuntu' && node['platform'] != 'centos'
    raise 'this cookbook is developed only for centos and ubuntu'
end

package package_name do
    action :install
end

php_packages.each do |php_package|
    package php_package do
        action :install
    end
end

service package_name do
    action :restart
end
