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

package 'php' do
    action :install
end

package 'php-mysql' do
    action :install
end

package 'php-fpm' do
    action :install
end
