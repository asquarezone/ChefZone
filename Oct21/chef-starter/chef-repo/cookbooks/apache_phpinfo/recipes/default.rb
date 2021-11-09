#
# Cookbook:: apache_phpinfo
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
apache_package = node['apache_phpinfo']['apache_package']
all_packages = node['apache_phpinfo']['all_packages']
info_page_path = node['apache_phpinfo']['info_page_path']

if node['platform'] == 'ubuntu'
  apt_update 'update ubuntu packages' do
    ignore_failure true
    action :update
  end
end

package all_packages do
  action :install
end

file info_page_path do
  content '<?php phpinfo(); ?>'
  action :create
end

service 'enable apache' do
  service_name apache_package
  action :enable
end

service apache_package do
  action :restart
end
