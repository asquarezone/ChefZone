#
# Cookbook:: .
# Recipe:: appserver
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe "nodejs"

#include_recipe 'pm2::default'

execute 'install pm2' do
  command 'npm install -g pm2'
  action :run
  not_if { ::File.exist?('/home/ubuntu/installed') }
end

template '/home/ubuntu/hello.js' do
  source 'hello.js.erb'
  action :create
  notifies :run, 'execute[cleanup]', :immedietly
end

execute 'start pm2' do
  command 'pm2 start /home/ubuntu/hello.js'
  action :run
  not_if { ::File.exist?('/home/ubuntu/installed') }
end

file '/home/ubuntu/installed' do
  content 'content'
  action :create
end


execute 'cleanup' do
  command 'rm /home/ubuntu/installed'
  action :nothing
  only_if { ::File.exist?('/home/ubuntu/installed') }
end
