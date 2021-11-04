#
# Cookbook:: apache_phpinfo
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
if node['platform'] == 'ubuntu'
  apt_update 'update ubuntu packages' do
    ignore_failure true
    action :update
  end

  package 'install lamp packages' do
    package_name %w(apache2 php libapache2-mod-php php-mysql)
    action :install
  end

  file '/var/www/html/info.php' do
    content '<?php phpinfo(); ?>'
    action :create
  end

  service 'apache2' do
    action :restart
  end
elsif node['platform'] == 'centos'

  package 'install lamp packages on centos' do
    package_name %w(httpd php php-mysql php-fpm)
    action :install
  end

  file 'infopage' do
    path '/var/www/html/info.php'
    content '<?php phpinfo(); ?>'
    action :create
  end

  service 'httpd' do
    action :enable
  end

  service 'httpd for centos' do
    service_name  'httpd'
    action :start
  end
  
end