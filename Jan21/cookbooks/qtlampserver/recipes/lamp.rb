#
# Cookbook:: .
# Recipe:: lamp
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package_name = node['qtlampserver']['packagename']
php_packages = node['qtlampserver']['phppackages']

apt_update 'update ubuntu packages' do
    ignore_failure true
    action :update
    only_if { node['platform'] == 'ubuntu' }
end   
    
if node['platform'] != 'ubuntu' && node['platform'] != 'centos'
    raise 'this cookbook is developed only for centos and ubuntu' 
end

package package_name do
    action :install
    notifies :restart, "service[#{package_name}]"
end

php_packages.each do |php_package|
    package php_package do
        action :install
    end
end

service package_name do
    action :enable
end

cookbook_file '/var/www/html/info.php' do
    source 'info.php'
    action :create
    notifies :restart, "service[#{package_name}]"
end

