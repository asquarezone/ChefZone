#
# Cookbook:: apache_phpinfo
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

apt_update 'update ubuntu packages' do
  ignore_failure true
  action :update
end

package 'install lamp packages' do
  package_name ['apache2', 'php', 'libapache2-mod-php', 'php-mysql']
  action :install
end

file '/var/www/html/info.php' do
  content '<?php phpinfo(); ?>'
  action :create
end

service 'apache2' do
  action :restart
end
