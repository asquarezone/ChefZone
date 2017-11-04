#
# Cookbook:: .
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_package 'tomcat7' do
  action :install
end

service 'tomcat7' do
  action :start
end

