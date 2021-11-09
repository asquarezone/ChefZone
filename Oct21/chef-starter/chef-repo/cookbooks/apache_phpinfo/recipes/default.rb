#
# Cookbook:: apache_phpinfo
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
apache_package = node['apache_phpinfo']['apache_package']
all_packages = node['apache_phpinfo']['all_packages']
info_page_path = node['apache_phpinfo']['info_page_path']

apt_update 'update ubuntu packages' do
  ignore_failure true
  action :update
  only_if { platform?('ubuntu') }
end

package all_packages do
  action :install
  notifies :enable, 'service[enable_apache]', :immediate
end

file info_page_path do
  content '<?php phpinfo(); ?>'
  action :create
  notifies :restart, 'service[enable_apache]', :immediate
end

service 'enable_apache' do
  service_name apache_package
  action :nothing
end
