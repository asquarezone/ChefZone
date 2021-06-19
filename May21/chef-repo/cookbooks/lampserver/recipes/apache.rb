#
# Cookbook:: .
# Recipe:: apache
#
# Copyright:: 2021, The Authors, All Rights Reserved.

apt_update 'update ubuntu packages' do
    ignore_failure true
    action :update
    only_if { node['platform'] == 'ubuntu' }
end

apache_package = node['lampserver']['apache_package']
php_packages = node['lampserver']['php_packages']

package apache_package do
    action :install
end

package 'install php packages' do
    package_name php_packages
    action :install
end

file '/var/www/html/info.php' do
    content '<?php phpinfo(); ?>'
    action :create
end

service apache_package do
    action [:enable, :start]
end



