#
# Cookbook:: .
# Recipe:: lamp_ubuntu
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# sudo apt update
apt_update 'update ubuntu packages' do
    action :update
end

# sudo apt install apache2
#apt_package 'installing apache server' do
#    package_name 'apache2'
#    action :install
#end

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

service 'apache2' do
    action :start
end
