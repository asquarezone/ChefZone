#
# Cookbook:: .
# Recipe:: lamp_centos
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# Install apache
yum_package 'httpd' do
    action :install
end

# Start Apache
service 'httpd' do
    action :restart
end

# Install php php-mysql php-fpm

yum_package 'php' do
    action :install
end

yum_package 'php-mysql' do
    action :install
end

yum_package 'php-fpm' do
    action :install
end


file '/var/www/html/info.php' do
    content '<?php phpinfo(); ?>'
    action :create
end






