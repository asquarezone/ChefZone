#
# Cookbook:: .
# Recipe:: lamp_redhat
#
# Copyright:: 2021, The Authors, All Rights Reserved.

#sudo dnf update
# could not find a resource

#sudo dnf install httpd -y

apache_package = 'httpd'

package apache_package do
    action :install
end

#sudo systemctl enable httpd.service
#sudo systemctl start httpd.service

service apache_package do
    action [ :enable, :start ]
end


#sudo dnf install php php-mysqlnd php-mbstring php-opcache php-gd -y

php_packages = %w(php php-mysqlnd php-mbstring php-opcache php-gd)

package 'phppackages' do
    package_name php_packages
    action :install
end


#echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php
file '/var/www/html/info.php' do
    content '<?php phpinfo(); ?>'
    action :create
end

service 'restartapache' do
    service_name apache_package
    action :restart
end
