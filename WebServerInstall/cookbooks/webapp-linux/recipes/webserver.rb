#
# Cookbook Name:: webapp-linux
# Recipe:: webserver
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#Install Apache and Start the Apache Service

node.default['webapp-linux']['document_root']='/var/www/customers/public_html'

node.default['firewall']['allow_ssh'] = true


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
directory node['webapp-linux']['document_root'] do
  recursive true
end

# Create a default home page
file "#{node['webapp-linux']['document_root']}/index.php" do
  content '<html>This is a temporary page </html>'
  owner 'web_admin'
  group 'web_admin'
  mode '0644'
  action :create
end

#Open Tcp Port 80 for web traffic
firewall_rule 'http' do
  port 80
  protocol :tcp
  action :create
end
