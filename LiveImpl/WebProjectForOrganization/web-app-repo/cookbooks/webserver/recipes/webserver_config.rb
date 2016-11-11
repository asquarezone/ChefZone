#
# Cookbook Name:: .
# Recipe:: webserver_config
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install the Apache and start the service
httpd_service 'customers' do
  mpm 'prefork'
  action [:create, :start]
  servername 'default-ubuntu-1404'
end

# Add the site configuration.
httpd_config 'customers' do
  instance 'customers'
  source 'customers.conf.erb'
  notifies :restart, 'httpd_service[customers]'
end

# Create the document root directory.
directory node['webserver']['document_root'] do
  recursive true
end

# Write the home page.
file "#{node['webserver']['document_root']}/index.html" do
  content '<html>This is a placeholder</html>'
  mode '0644'
  owner node['webserver']['user']
  group node['webserver']['group']
end

# Install the mod_php5 Apache module.
httpd_module 'php5' do
  instance 'customers'
end


# Install php5-mysql.
package 'php5-mysql' do
  action :install
  notifies :restart, 'httpd_service[customers]'
end




