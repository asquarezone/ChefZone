#
# Cookbook Name:: .
# Recipe:: deploy_application
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

#location is https://downloads.sourceforge.net/project/orangehrm/stable/3.3.3/orangehrm-3.3.3.zip

remote_file '/var/tmp/orangehrm.zip' do
  source 'https://downloads.sourceforge.net/project/orangehrm/stable/3.3.3/orangehrm-3.3.3.zip'
  owner 'root'
  group 'root'
  mode '0777'
  action :create_if_missing
end

log 'downloaded orangehrm'

webserver_package = node['orangehrm']['webserver']['package']

zipfile '/var/tmp/orangehrm.zip' do
  into '/var/www/html/'
  not_if { ::File.exist?('/var/www/html/orangehrm-3.3.3/index.php') || ::File.exist?('/var/www/html/orangehrm/index.php')}
end

log 'extracted hrm to html folder'

execute 'rename' do
  command 'mv /var/www/html/orangehrm-3.3.3/ /var/www/html/orangehrm/'
  only_if { ::File.exist?('/var/www/html/orangehrm-3.3.3/index.php') }
  action :run
end

execute 'assign permissions' do
  command 'chmod 0777 -R /var/www/html/orangehrm'
  only_if { ::File.exist?('/var/www/html/orangehrm/index.php') }
  notifies :reload, "service[#{webserver_package}]"
end
