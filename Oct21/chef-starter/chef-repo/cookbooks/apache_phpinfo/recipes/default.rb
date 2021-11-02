#
# Cookbook:: apache_phpinfo
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

apt_update 'update ubuntu packages' do
    ignore_failure true
    action :update
end

package 'apache2' do
    action :install
end

package 'php' do
    action :install
end

package 'libapache2-mod-php' do
    action :install
end

package 'php-mysql' do
    action :install
end


file '/var/www/html/info.php' do
    content '<?php phpinfo(); ?>'
    action :create
end

service 'apache2' do
    action :restart
end


