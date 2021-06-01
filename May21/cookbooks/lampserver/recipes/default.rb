#
# Cookbook:: lampserver
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# sudo apt update
# https://docs.chef.io/resources/apt_update/

apt_update 'update packages' do
    ignore_failure true
    action :update
end

# sudo apt install apache2 -y
# We can use apt_package resource or common package resource 

package 'apache2' do
    action :install
end

# sudo apt install php libapache2-mod-php php-mysql php-cli -y
php_packages = %w(php libapache2-mod-php php-mysql php-cli)

php_packages.each do |php_package|
    package php_package do
        action :install
    end
end


# echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php

file '/var/www/html/info.php' do
    content '<?php phpinfo(); ?>'
    action :create
end
