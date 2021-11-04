#
# Cookbook:: apache_phpinfo
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
apache_package = 'apache2'
all_packages = %w(apache2 php libapache2-mod-php php-mysql)
info_page_path = '/var/www/html/info.php'

if node['platform'] == 'centos'
  apache_package = 'httpd'
  all_packages = %w(httpd php php-mysql php-fpm)
end

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

