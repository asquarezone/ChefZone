#
# Cookbook:: apache_cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update 'update packages' do
    action :update
end

apt_package 'apache2' do
    action :install
end

service 'apache2' do
    action :restart
end


file '/home/ec2-user/newchanges.txt' do
    content 'nothing new'
    action :create
end




