#
# Cookbook:: .
# Recipe:: lamp_centos
#
# Copyright:: 2021, The Authors, All Rights Reserved.

yum_package 'httpd' do
    action :install
end

service 'httpd' do
    action :start
end


