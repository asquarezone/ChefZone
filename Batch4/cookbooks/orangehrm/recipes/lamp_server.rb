#
# Cookbook Name:: .
# Recipe:: lamp-server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.




log 'installing apache server'
#apt-get install apache2

webserver_package = node['orangehrm']['webserver']['package']

package webserver_package do
  action :install
end
log "installed #{webserver_package}"

service webserver_package do
  action [:enable, :start]
end

log 'enabled and started the apache service'

php_packages = node['orangehrm']['webserver']['php_packages']

package php_packages do
  action :install
end

log 'installed apache php packages'
