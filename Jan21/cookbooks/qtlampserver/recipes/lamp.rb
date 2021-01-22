#
# Cookbook:: .
# Recipe:: lamp
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package_name = nil
php_packages = nil
if node['platform'] == 'ubuntu'
    apt_update 'update ubuntu packages' do
        ignore_failure true
        action :update
    end
    package_name = 'apache2'
    php_packages = %w(php libapache2-mod-php php-mysql php-cli)
    
elsif node['platform'] == 'centos'
    package_name = 'httpd'
    php_packages = %w(php php-mysql php-fpm) 

else
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
