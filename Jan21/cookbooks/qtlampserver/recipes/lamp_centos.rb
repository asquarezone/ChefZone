#
# Cookbook:: .
# Recipe:: lamp_centos
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# Install apache
package 'httpd' do
    action :install
end

# Start Apache
service 'httpd' do
    action :restart
end

# Install php php-mysql php-fpm
php_packages = %w(php php-mysql php-fpm)

php_packages.each do |php_package|
    package php_package do
        action :install
    end
end
