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

apt_package 'apache2' do
    action :install
end

# sudo apt install php libapache2-mod-php php-mysql php-cli -y
apt_package 'php' do
    action :install
end

apt_package 'libapache2-mod-php' do
    action :install
end

apt_package 'php-mysql' do
    action :install
end

apt_package 'php-cli' do
    action :install
end

service 'apache2' do
    action :restart
end
