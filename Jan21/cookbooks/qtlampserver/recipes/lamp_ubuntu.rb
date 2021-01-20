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


