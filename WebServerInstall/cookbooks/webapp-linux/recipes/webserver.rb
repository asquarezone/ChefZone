#
# Cookbook Name:: webapp-linux
# Recipe:: webserver
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#Install Apache and Start the Apache Service

httpd_service 'customers' do
  mpm 'prefork'
  action [:create, :start]
end

# Add the customers site
httpd_config 'customers' do
  instance  'customers'
  source 'customers.conf.erb'
  notifies :restart, 'httpd_service[customers]'
end

# Create the document root directory
directory '/var/www/customers/public_html' do
  recursive true
end

# Create a default home page
file '/var/www/customers/public_html/index.php' do
  content '<html>This is a temporary page </html>'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
