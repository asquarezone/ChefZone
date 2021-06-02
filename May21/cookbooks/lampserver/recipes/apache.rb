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

apache_package = ""
php_packages = []

if node['platform'] == 'ubuntu'
    apache_package = "apache2"
    php_packages = %w(php libapache2-mod-php php-mysql php-cli)
elsif node['platform'] == "redhat"
    apache_package = "httpd"
    php_packages = %w(php php-mysqlnd php-mbstring php-opcache php-gd)
end

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



